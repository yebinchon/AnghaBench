
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bmi_segmented_metadata {int * data; int length; int addr; } ;
struct bmi_segmented_file_header {scalar_t__ file_flags; scalar_t__ data; int magic_num; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_BOOT ;




 scalar_t__ BMI_SGMTFILE_MAGIC_NUM ;
 int EINVAL ;
 scalar_t__ __le32_to_cpu (int ) ;
 int ath10k_bmi_set_start (struct ath10k*,int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 int ath10k_hw_diag_segment_download (struct ath10k*,int const*,int,int) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;

int ath10k_hw_diag_fast_download(struct ath10k *ar,
     u32 address,
     const void *buffer,
     u32 length)
{
 const u8 *buf = buffer;
 bool sgmt_end = 0;
 u32 base_addr = 0;
 u32 base_len = 0;
 u32 left = 0;
 struct bmi_segmented_file_header *hdr;
 struct bmi_segmented_metadata *metadata;
 int ret = 0;

 if (length < sizeof(*hdr))
  return -EINVAL;




 hdr = (struct bmi_segmented_file_header *)buf;
 if (__le32_to_cpu(hdr->magic_num) != BMI_SGMTFILE_MAGIC_NUM) {
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "Not a supported firmware, magic_num:0x%x\n",
      hdr->magic_num);
  return -EINVAL;
 }

 if (hdr->file_flags != 0) {
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "Not a supported firmware, file_flags:0x%x\n",
      hdr->file_flags);
  return -EINVAL;
 }

 metadata = (struct bmi_segmented_metadata *)hdr->data;
 left = length - sizeof(*hdr);

 while (left > 0) {
  if (left < sizeof(*metadata)) {
   ath10k_warn(ar, "firmware segment is truncated: %d\n",
        left);
   ret = -EINVAL;
   break;
  }
  base_addr = __le32_to_cpu(metadata->addr);
  base_len = __le32_to_cpu(metadata->length);
  buf = metadata->data;
  left -= sizeof(*metadata);

  switch (base_len) {
  case 130:

   ret = ath10k_bmi_set_start(ar, base_addr);
   base_len = 0;
   break;
  case 129:

   base_len = 0;
   sgmt_end = 1;
   ret = 0;
   break;
  case 131:
  case 128:
   ath10k_warn(ar,
        "firmware has unsupported segment:%d\n",
        base_len);
   ret = -EINVAL;
   break;
  default:
   if (base_len > left) {

    ath10k_warn(ar,
         "firmware has invalid segment length, %d > %d\n",
         base_len, left);
    ret = -EINVAL;
    break;
   }

   ret = ath10k_hw_diag_segment_download(ar,
             buf,
             base_addr,
             base_len);

   if (ret)
    ath10k_warn(ar,
         "failed to download firmware via diag interface:%d\n",
         ret);
   break;
  }

  if (ret || sgmt_end)
   break;

  metadata = (struct bmi_segmented_metadata *)(buf + base_len);
  left -= base_len;
 }

 if (ret == 0)
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "boot firmware fast diag download successfully.\n");
 return ret;
}

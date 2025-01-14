
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int payload; void* len; } ;
struct bmi_cmd {TYPE_2__ lz_data; void* id; } ;
struct TYPE_3__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_1__ bmi; } ;


 int ATH10K_DBG_BMI ;
 int BMI_LZ_DATA ;
 int BMI_MAX_DATA_SIZE ;
 int EBUSY ;
 int WARN_ON_ONCE (int) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,void const*,int) ;
 int ath10k_hif_exchange_bmi_msg (struct ath10k*,struct bmi_cmd*,int,int *,int *) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int memcpy (int ,void const*,int) ;
 int min (int,int) ;

int ath10k_bmi_lz_data(struct ath10k *ar, const void *buffer, u32 length)
{
 struct bmi_cmd cmd;
 u32 hdrlen = sizeof(cmd.id) + sizeof(cmd.lz_data);
 u32 txlen;
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_BMI, "bmi lz data buffer 0x%pK length %d\n",
     buffer, length);

 if (ar->bmi.done_sent) {
  ath10k_warn(ar, "command disallowed\n");
  return -EBUSY;
 }

 while (length) {
  txlen = min(length, BMI_MAX_DATA_SIZE - hdrlen);

  WARN_ON_ONCE(txlen & 3);

  cmd.id = __cpu_to_le32(BMI_LZ_DATA);
  cmd.lz_data.len = __cpu_to_le32(txlen);
  memcpy(cmd.lz_data.payload, buffer, txlen);

  ret = ath10k_hif_exchange_bmi_msg(ar, &cmd, hdrlen + txlen,
        ((void*)0), ((void*)0));
  if (ret) {
   ath10k_warn(ar, "unable to write to the device\n");
   return ret;
  }

  buffer += txlen;
  length -= txlen;
 }

 return 0;
}

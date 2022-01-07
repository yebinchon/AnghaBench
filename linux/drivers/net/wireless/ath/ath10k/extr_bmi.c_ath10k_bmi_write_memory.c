
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {void* len; void* addr; int payload; } ;
struct bmi_cmd {TYPE_2__ write_mem; void* id; } ;
struct TYPE_3__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_1__ bmi; } ;


 int ATH10K_DBG_BMI ;
 int BMI_MAX_DATA_SIZE ;
 int BMI_WRITE_MEMORY ;
 int EBUSY ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 int ath10k_hif_exchange_bmi_msg (struct ath10k*,struct bmi_cmd*,int,int *,int *) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int memcpy (int ,void const*,int) ;
 int min (int,int) ;
 int roundup (int,int) ;

int ath10k_bmi_write_memory(struct ath10k *ar,
       u32 address, const void *buffer, u32 length)
{
 struct bmi_cmd cmd;
 u32 hdrlen = sizeof(cmd.id) + sizeof(cmd.write_mem);
 u32 txlen;
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_BMI, "bmi write address 0x%x length %d\n",
     address, length);

 if (ar->bmi.done_sent) {
  ath10k_warn(ar, "command disallowed\n");
  return -EBUSY;
 }

 while (length) {
  txlen = min(length, BMI_MAX_DATA_SIZE - hdrlen);


  memcpy(cmd.write_mem.payload, buffer, txlen);
  txlen = roundup(txlen, 4);

  cmd.id = __cpu_to_le32(BMI_WRITE_MEMORY);
  cmd.write_mem.addr = __cpu_to_le32(address);
  cmd.write_mem.len = __cpu_to_le32(txlen);

  ret = ath10k_hif_exchange_bmi_msg(ar, &cmd, hdrlen + txlen,
        ((void*)0), ((void*)0));
  if (ret) {
   ath10k_warn(ar, "unable to write to the device (%d)\n",
        ret);
   return ret;
  }


  txlen = min(txlen, length);

  address += txlen;
  buffer += txlen;
  length -= txlen;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath6kl_device {int ar; } ;


 int ATH6KL_FW_ASSERT ;
 int COUNT_DEC_ADDRESS ;
 int HIF_RD_SYNC_BYTE_INC ;
 int ath6kl_hif_dump_fw_crash (int ) ;
 int ath6kl_read_fwlogs (int ) ;
 int ath6kl_recovery_err_notify (int ,int ) ;
 int ath6kl_warn (char*,...) ;
 int hif_read_write_sync (int ,int ,int *,int,int ) ;

__attribute__((used)) static int ath6kl_hif_proc_dbg_intr(struct ath6kl_device *dev)
{
 u32 dummy;
 int ret;

 ath6kl_warn("firmware crashed\n");





 ret = hif_read_write_sync(dev->ar, COUNT_DEC_ADDRESS,
         (u8 *)&dummy, 4, HIF_RD_SYNC_BYTE_INC);
 if (ret)
  ath6kl_warn("Failed to clear debug interrupt: %d\n", ret);

 ath6kl_hif_dump_fw_crash(dev->ar);
 ath6kl_read_fwlogs(dev->ar);
 ath6kl_recovery_err_notify(dev->ar, ATH6KL_FW_ASSERT);

 return ret;
}

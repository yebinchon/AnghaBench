
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_nfc {int dev; int cmd_done; } ;


 int IDLE_EN_BIT ;
 int NFC_FLASH_CMD2 ;
 int NFC_IRQ_STATUS ;
 int START_BIT ;
 int dev_warn (int ,char*) ;
 unsigned long msecs_to_jiffies (int) ;
 int vf610_nfc_clear_status (struct vf610_nfc*) ;
 int vf610_nfc_set (struct vf610_nfc*,int ,int ) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static void vf610_nfc_done(struct vf610_nfc *nfc)
{
 unsigned long timeout = msecs_to_jiffies(100);
 vf610_nfc_set(nfc, NFC_IRQ_STATUS, IDLE_EN_BIT);
 vf610_nfc_set(nfc, NFC_FLASH_CMD2, START_BIT);

 if (!wait_for_completion_timeout(&nfc->cmd_done, timeout))
  dev_warn(nfc->dev, "Timeout while waiting for BUSY.\n");

 vf610_nfc_clear_status(nfc);
}

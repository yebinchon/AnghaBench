
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 long QLCNIC_MAX_ROM_WAIT_USEC ;
 int QLCNIC_ROMUSB_GLB_STATUS ;
 long QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int cond_resched () ;
 int dev_err (int *,char*) ;
 int udelay (int) ;

__attribute__((used)) static int qlcnic_wait_rom_done(struct qlcnic_adapter *adapter)
{
 long timeout = 0;
 long done = 0;
 int err = 0;

 cond_resched();
 while (done == 0) {
  done = QLCRD32(adapter, QLCNIC_ROMUSB_GLB_STATUS, &err);
  done &= 2;
  if (++timeout >= QLCNIC_MAX_ROM_WAIT_USEC) {
   dev_err(&adapter->pdev->dev,
    "Timeout reached  waiting for rom done");
   return -EIO;
  }
  udelay(1);
 }
 return 0;
}

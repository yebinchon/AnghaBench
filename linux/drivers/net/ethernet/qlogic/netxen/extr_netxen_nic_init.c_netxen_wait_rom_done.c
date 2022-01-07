
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netxen_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 long NETXEN_MAX_ROM_WAIT_USEC ;
 int NETXEN_ROMUSB_GLB_STATUS ;
 long NXRD32 (struct netxen_adapter*,int ) ;
 int cond_resched () ;
 int dev_err (int *,char*) ;
 int udelay (int) ;

__attribute__((used)) static int netxen_wait_rom_done(struct netxen_adapter *adapter)
{
 long timeout = 0;
 long done = 0;

 cond_resched();

 while (done == 0) {
  done = NXRD32(adapter, NETXEN_ROMUSB_GLB_STATUS);
  done &= 2;
  if (++timeout >= NETXEN_MAX_ROM_WAIT_USEC) {
   dev_err(&adapter->pdev->dev,
    "Timeout reached  waiting for rom done");
   return -EIO;
  }
  udelay(1);
 }
 return 0;
}

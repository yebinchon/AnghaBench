
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct igb_adapter {int ptp_flags; TYPE_2__* netdev; TYPE_1__* pdev; scalar_t__ ptp_clock; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int dev; } ;


 int IGB_PTP_ENABLED ;
 int dev_info (int *,char*,int ) ;
 int igb_ptp_suspend (struct igb_adapter*) ;
 int ptp_clock_unregister (scalar_t__) ;

void igb_ptp_stop(struct igb_adapter *adapter)
{
 igb_ptp_suspend(adapter);

 if (adapter->ptp_clock) {
  ptp_clock_unregister(adapter->ptp_clock);
  dev_info(&adapter->pdev->dev, "removed PHC on %s\n",
    adapter->netdev->name);
  adapter->ptp_flags &= ~IGB_PTP_ENABLED;
 }
}

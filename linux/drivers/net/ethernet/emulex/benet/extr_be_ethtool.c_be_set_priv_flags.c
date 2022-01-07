
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct be_adapter {int priv_flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BE_DISABLE_TPE_RECOVERY ;
 int dev_info (int *,char*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_set_priv_flags(struct net_device *netdev, u32 flags)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 bool tpe_old = !!(adapter->priv_flags & BE_DISABLE_TPE_RECOVERY);
 bool tpe_new = !!(flags & BE_DISABLE_TPE_RECOVERY);

 if (tpe_old != tpe_new) {
  if (tpe_new) {
   adapter->priv_flags |= BE_DISABLE_TPE_RECOVERY;
   dev_info(&adapter->pdev->dev,
     "HW error recovery is disabled\n");
  } else {
   adapter->priv_flags &= ~BE_DISABLE_TPE_RECOVERY;
   dev_info(&adapter->pdev->dev,
     "HW error recovery is enabled\n");
  }
 }

 return 0;
}

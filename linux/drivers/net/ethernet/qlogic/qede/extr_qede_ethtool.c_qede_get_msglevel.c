
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qede_dev {int dp_module; scalar_t__ dp_level; } ;
struct net_device {int dummy; } ;


 int QED_LOG_LEVEL_SHIFT ;
 struct qede_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 qede_get_msglevel(struct net_device *ndev)
{
 struct qede_dev *edev = netdev_priv(ndev);

 return ((u32)edev->dp_level << QED_LOG_LEVEL_SHIFT) | edev->dp_module;
}

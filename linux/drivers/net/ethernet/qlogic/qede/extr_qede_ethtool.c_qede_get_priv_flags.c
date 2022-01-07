
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_hwfns; scalar_t__ smart_an; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct qede_dev {TYPE_2__ dev_info; } ;
struct net_device {int dummy; } ;


 int BIT (int ) ;
 int QEDE_PRI_FLAG_CMT ;
 int QEDE_PRI_FLAG_SMART_AN_SUPPORT ;
 struct qede_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 qede_get_priv_flags(struct net_device *dev)
{
 struct qede_dev *edev = netdev_priv(dev);
 u32 flags = 0;

 if (edev->dev_info.common.num_hwfns > 1)
  flags |= BIT(QEDE_PRI_FLAG_CMT);

 if (edev->dev_info.common.smart_an)
  flags |= BIT(QEDE_PRI_FLAG_SMART_AN_SUPPORT);

 return flags;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qede_dev {TYPE_4__* ndev; int cdev; TYPE_3__* ops; } ;
struct notifier_block {int dummy; } ;
struct net_device {TYPE_1__* ethtool_ops; } ;
struct ethtool_drvinfo {int driver; } ;
typedef int drvinfo ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {TYPE_2__* common; } ;
struct TYPE_6__ {int (* set_name ) (int ,int ) ;} ;
struct TYPE_5__ {int (* get_drvinfo ) (struct net_device*,struct ethtool_drvinfo*) ;} ;




 int NOTIFY_DONE ;
 int memset (struct ethtool_drvinfo*,int ,int) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_rdma_event_changeaddr (struct qede_dev*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (struct net_device*,struct ethtool_drvinfo*) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int qede_netdev_event(struct notifier_block *this, unsigned long event,
        void *ptr)
{
 struct net_device *ndev = netdev_notifier_info_to_dev(ptr);
 struct ethtool_drvinfo drvinfo;
 struct qede_dev *edev;

 if (event != 128 && event != 129)
  goto done;


 if (!ndev || !ndev->ethtool_ops || !ndev->ethtool_ops->get_drvinfo)
  goto done;

 memset(&drvinfo, 0, sizeof(drvinfo));
 ndev->ethtool_ops->get_drvinfo(ndev, &drvinfo);
 if (strcmp(drvinfo.driver, "qede"))
  goto done;
 edev = netdev_priv(ndev);

 switch (event) {
 case 128:

  if (!edev->ops || !edev->ops->common)
   goto done;
  edev->ops->common->set_name(edev->cdev, edev->ndev->name);
  break;
 case 129:
  edev = netdev_priv(ndev);
  qede_rdma_event_changeaddr(edev);
  break;
 }

done:
 return NOTIFY_DONE;
}

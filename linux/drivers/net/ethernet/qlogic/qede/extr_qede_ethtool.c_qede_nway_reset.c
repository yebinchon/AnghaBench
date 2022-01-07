
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct qed_link_params {int link_up; } ;
struct qed_link_output {int link_up; } ;
struct net_device {int dummy; } ;
typedef int link_params ;
typedef int current_link ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* set_link ) (int ,struct qed_link_params*) ;int (* get_link ) (int ,struct qed_link_params*) ;int (* can_link_change ) (int ) ;} ;


 int DP_INFO (struct qede_dev*,char*) ;
 int EOPNOTSUPP ;
 int memset (struct qed_link_params*,int ,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int stub1 (int ) ;
 int stub2 (int ,struct qed_link_params*) ;
 int stub3 (int ,struct qed_link_params*) ;
 int stub4 (int ,struct qed_link_params*) ;

__attribute__((used)) static int qede_nway_reset(struct net_device *dev)
{
 struct qede_dev *edev = netdev_priv(dev);
 struct qed_link_output current_link;
 struct qed_link_params link_params;

 if (!edev->ops || !edev->ops->common->can_link_change(edev->cdev)) {
  DP_INFO(edev, "Link settings are not allowed to be changed\n");
  return -EOPNOTSUPP;
 }

 if (!netif_running(dev))
  return 0;

 memset(&current_link, 0, sizeof(current_link));
 edev->ops->common->get_link(edev->cdev, &current_link);
 if (!current_link.link_up)
  return 0;


 memset(&link_params, 0, sizeof(link_params));
 link_params.link_up = 0;
 edev->ops->common->set_link(edev->cdev, &link_params);
 link_params.link_up = 1;
 edev->ops->common->set_link(edev->cdev, &link_params);

 return 0;
}

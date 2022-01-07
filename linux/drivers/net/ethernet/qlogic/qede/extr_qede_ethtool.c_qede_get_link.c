
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct qed_link_output {int link_up; } ;
struct net_device {int dummy; } ;
typedef int current_link ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* get_link ) (int ,struct qed_link_output*) ;} ;


 int memset (struct qed_link_output*,int ,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ,struct qed_link_output*) ;

__attribute__((used)) static u32 qede_get_link(struct net_device *dev)
{
 struct qede_dev *edev = netdev_priv(dev);
 struct qed_link_output current_link;

 memset(&current_link, 0, sizeof(current_link));
 edev->ops->common->get_link(edev->cdev, &current_link);

 return current_link.link_up;
}

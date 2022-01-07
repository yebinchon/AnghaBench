
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct qed_link_params {int supported_caps; int link_up; int pause_config; int override_flags; } ;
struct qed_link_output {int supported_caps; int link_up; int pause_config; int override_flags; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
typedef int params ;
typedef int current_link ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* set_link ) (int ,struct qed_link_params*) ;int (* get_link ) (int ,struct qed_link_params*) ;int (* can_link_change ) (int ) ;} ;


 int DP_INFO (struct qede_dev*,char*) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int QED_LINK_OVERRIDE_PAUSE_CONFIG ;
 int QED_LINK_PAUSE_AUTONEG_ENABLE ;
 int QED_LINK_PAUSE_RX_ENABLE ;
 int QED_LINK_PAUSE_TX_ENABLE ;
 int QED_LM_Autoneg_BIT ;
 int memset (struct qed_link_params*,int ,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int stub1 (int ) ;
 int stub2 (int ,struct qed_link_params*) ;
 int stub3 (int ,struct qed_link_params*) ;

__attribute__((used)) static int qede_set_pauseparam(struct net_device *dev,
          struct ethtool_pauseparam *epause)
{
 struct qede_dev *edev = netdev_priv(dev);
 struct qed_link_params params;
 struct qed_link_output current_link;

 if (!edev->ops || !edev->ops->common->can_link_change(edev->cdev)) {
  DP_INFO(edev,
   "Pause settings are not allowed to be changed\n");
  return -EOPNOTSUPP;
 }

 memset(&current_link, 0, sizeof(current_link));
 edev->ops->common->get_link(edev->cdev, &current_link);

 memset(&params, 0, sizeof(params));
 params.override_flags |= QED_LINK_OVERRIDE_PAUSE_CONFIG;
 if (epause->autoneg) {
  if (!(current_link.supported_caps & QED_LM_Autoneg_BIT)) {
   DP_INFO(edev, "autoneg not supported\n");
   return -EINVAL;
  }
  params.pause_config |= QED_LINK_PAUSE_AUTONEG_ENABLE;
 }
 if (epause->rx_pause)
  params.pause_config |= QED_LINK_PAUSE_RX_ENABLE;
 if (epause->tx_pause)
  params.pause_config |= QED_LINK_PAUSE_TX_ENABLE;

 params.link_up = 1;
 edev->ops->common->set_link(edev->cdev, &params);

 return 0;
}

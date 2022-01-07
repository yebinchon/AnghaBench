
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qede_dev {int rss_caps; scalar_t__ state; int cdev; TYPE_1__* ops; int rss_params_inited; } ;
struct qed_update_vport_params {int update_rss_flg; int rss_params; } ;
struct ethtool_rxnfc {int flow_type; int data; } ;
struct TYPE_2__ {int (* vport_update ) (int ,struct qed_update_vport_params*) ;} ;






 int DP_INFO (struct qede_dev*,char*) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,...) ;
 int EINVAL ;
 int ENOMEM ;






 int QEDE_RSS_CAPS_INITED ;
 scalar_t__ QEDE_STATE_OPEN ;
 int QED_MSG_DEBUG ;
 int QED_RSS_IPV4_UDP ;
 int QED_RSS_IPV6_UDP ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int qede_fill_rss_params (struct qede_dev*,int *,int *) ;
 int stub1 (int ,struct qed_update_vport_params*) ;
 int vfree (struct qed_update_vport_params*) ;
 struct qed_update_vport_params* vzalloc (int) ;

__attribute__((used)) static int qede_set_rss_flags(struct qede_dev *edev, struct ethtool_rxnfc *info)
{
 struct qed_update_vport_params *vport_update_params;
 u8 set_caps = 0, clr_caps = 0;
 int rc = 0;

 DP_VERBOSE(edev, QED_MSG_DEBUG,
     "Set rss flags command parameters: flow type = %d, data = %llu\n",
     info->flow_type, info->data);

 switch (info->flow_type) {
 case 131:
 case 130:

  if (info->data ^ (RXH_IP_SRC | RXH_IP_DST |
      RXH_L4_B_0_1 | RXH_L4_B_2_3)) {
   DP_INFO(edev, "Command parameters not supported\n");
   return -EINVAL;
  }
  return 0;
 case 129:

  if (info->data == (RXH_IP_SRC | RXH_IP_DST |
       RXH_L4_B_0_1 | RXH_L4_B_2_3)) {
   set_caps = QED_RSS_IPV4_UDP;
   DP_VERBOSE(edev, QED_MSG_DEBUG,
       "UDP 4-tuple enabled\n");
  } else if (info->data == (RXH_IP_SRC | RXH_IP_DST)) {
   clr_caps = QED_RSS_IPV4_UDP;
   DP_VERBOSE(edev, QED_MSG_DEBUG,
       "UDP 4-tuple disabled\n");
  } else {
   return -EINVAL;
  }
  break;
 case 128:

  if (info->data == (RXH_IP_SRC | RXH_IP_DST |
       RXH_L4_B_0_1 | RXH_L4_B_2_3)) {
   set_caps = QED_RSS_IPV6_UDP;
   DP_VERBOSE(edev, QED_MSG_DEBUG,
       "UDP 4-tuple enabled\n");
  } else if (info->data == (RXH_IP_SRC | RXH_IP_DST)) {
   clr_caps = QED_RSS_IPV6_UDP;
   DP_VERBOSE(edev, QED_MSG_DEBUG,
       "UDP 4-tuple disabled\n");
  } else {
   return -EINVAL;
  }
  break;
 case 136:
 case 135:

  if (info->data ^ (RXH_IP_SRC | RXH_IP_DST)) {
   DP_INFO(edev, "Command parameters not supported\n");
   return -EINVAL;
  }
  return 0;
 case 133:
 case 143:
 case 141:
 case 139:
 case 132:
 case 142:
 case 140:
 case 138:
 case 134:
 case 137:

  if (info->data) {
   DP_INFO(edev, "Command parameters not supported\n");
   return -EINVAL;
  }
  return 0;
 default:
  return -EINVAL;
 }


 if (edev->rss_caps == ((edev->rss_caps & ~clr_caps) | set_caps))
  return 0;


 edev->rss_caps = ((edev->rss_caps & ~clr_caps) | set_caps);
 edev->rss_params_inited |= QEDE_RSS_CAPS_INITED;


 __qede_lock(edev);
 if (edev->state == QEDE_STATE_OPEN) {
  vport_update_params = vzalloc(sizeof(*vport_update_params));
  if (!vport_update_params) {
   __qede_unlock(edev);
   return -ENOMEM;
  }
  qede_fill_rss_params(edev, &vport_update_params->rss_params,
         &vport_update_params->update_rss_flg);
  rc = edev->ops->vport_update(edev->cdev, vport_update_params);
  vfree(vport_update_params);
 }
 __qede_unlock(edev);

 return rc;
}

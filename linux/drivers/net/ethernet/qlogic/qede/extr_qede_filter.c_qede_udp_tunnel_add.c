
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u16 ;
typedef int tunn_params ;
struct udp_tunnel_info {int type; int port; } ;
struct TYPE_4__ {int geneve_enable; int vxlan_enable; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
struct qede_dev {void* geneve_dst_port; int cdev; TYPE_3__* ops; TYPE_2__ dev_info; void* vxlan_dst_port; } ;
struct qed_tunn_params {int update_vxlan_port; int update_geneve_port; void* geneve_port; void* vxlan_port; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int (* tunn_config ) (int ,struct qed_tunn_params*) ;} ;


 int DP_NOTICE (struct qede_dev*,char*,void*) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,void*) ;
 int QED_MSG_DEBUG ;


 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int memset (struct qed_tunn_params*,int ,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 void* ntohs (int ) ;
 int stub1 (int ,struct qed_tunn_params*) ;
 int stub2 (int ,struct qed_tunn_params*) ;

void qede_udp_tunnel_add(struct net_device *dev, struct udp_tunnel_info *ti)
{
 struct qede_dev *edev = netdev_priv(dev);
 struct qed_tunn_params tunn_params;
 u16 t_port = ntohs(ti->port);
 int rc;

 memset(&tunn_params, 0, sizeof(tunn_params));

 switch (ti->type) {
 case 128:
  if (!edev->dev_info.common.vxlan_enable)
   return;

  if (edev->vxlan_dst_port)
   return;

  tunn_params.update_vxlan_port = 1;
  tunn_params.vxlan_port = t_port;

  __qede_lock(edev);
  rc = edev->ops->tunn_config(edev->cdev, &tunn_params);
  __qede_unlock(edev);

  if (!rc) {
   edev->vxlan_dst_port = t_port;
   DP_VERBOSE(edev, QED_MSG_DEBUG, "Added vxlan port=%d\n",
       t_port);
  } else {
   DP_NOTICE(edev, "Failed to add vxlan UDP port=%d\n",
      t_port);
  }

  break;
 case 129:
  if (!edev->dev_info.common.geneve_enable)
   return;

  if (edev->geneve_dst_port)
   return;

  tunn_params.update_geneve_port = 1;
  tunn_params.geneve_port = t_port;

  __qede_lock(edev);
  rc = edev->ops->tunn_config(edev->cdev, &tunn_params);
  __qede_unlock(edev);

  if (!rc) {
   edev->geneve_dst_port = t_port;
   DP_VERBOSE(edev, QED_MSG_DEBUG,
       "Added geneve port=%d\n", t_port);
  } else {
   DP_NOTICE(edev, "Failed to add geneve UDP port=%d\n",
      t_port);
  }

  break;
 default:
  return;
 }
}

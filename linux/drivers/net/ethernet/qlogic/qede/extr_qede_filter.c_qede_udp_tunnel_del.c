
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef int tunn_params ;
struct udp_tunnel_info {int type; int port; } ;
struct qede_dev {int geneve_dst_port; int cdev; TYPE_1__* ops; int vxlan_dst_port; } ;
struct qed_tunn_params {int update_vxlan_port; int update_geneve_port; int geneve_port; int vxlan_port; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* tunn_config ) (int ,struct qed_tunn_params*) ;} ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,int ) ;
 int QED_MSG_DEBUG ;


 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int memset (struct qed_tunn_params*,int ,int) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int ntohs (int ) ;
 int stub1 (int ,struct qed_tunn_params*) ;
 int stub2 (int ,struct qed_tunn_params*) ;

void qede_udp_tunnel_del(struct net_device *dev,
    struct udp_tunnel_info *ti)
{
 struct qede_dev *edev = netdev_priv(dev);
 struct qed_tunn_params tunn_params;
 u16 t_port = ntohs(ti->port);

 memset(&tunn_params, 0, sizeof(tunn_params));

 switch (ti->type) {
 case 128:
  if (t_port != edev->vxlan_dst_port)
   return;

  tunn_params.update_vxlan_port = 1;
  tunn_params.vxlan_port = 0;

  __qede_lock(edev);
  edev->ops->tunn_config(edev->cdev, &tunn_params);
  __qede_unlock(edev);

  edev->vxlan_dst_port = 0;

  DP_VERBOSE(edev, QED_MSG_DEBUG, "Deleted vxlan port=%d\n",
      t_port);

  break;
 case 129:
  if (t_port != edev->geneve_dst_port)
   return;

  tunn_params.update_geneve_port = 1;
  tunn_params.geneve_port = 0;

  __qede_lock(edev);
  edev->ops->tunn_config(edev->cdev, &tunn_params);
  __qede_unlock(edev);

  edev->geneve_dst_port = 0;

  DP_VERBOSE(edev, QED_MSG_DEBUG, "Deleted geneve port=%d\n",
      t_port);
  break;
 default:
  return;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_nic_priv {int netdev; int state; TYPE_1__* ae_handle; } ;
typedef enum hnae_port_type { ____Placeholder_hnae_port_type } hnae_port_type ;
struct TYPE_2__ {int port_type; } ;


 int HNAE_PORT_DEBUG ;
 int NIC_STATE2_RESET_REQUESTED ;
 int NIC_STATE_DOWN ;
 int NIC_STATE_REMOVING ;
 int NIC_STATE_RESETTING ;
 int clear_bit (int ,int *) ;
 int hns_nic_dump (struct hns_nic_priv*) ;
 int hns_nic_net_reinit (int ) ;
 int netdev_info (int ,char*,char*) ;
 int netif_trans_update (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hns_nic_reset_subtask(struct hns_nic_priv *priv)
{
 enum hnae_port_type type = priv->ae_handle->port_type;

 if (!test_bit(NIC_STATE2_RESET_REQUESTED, &priv->state))
  return;
 clear_bit(NIC_STATE2_RESET_REQUESTED, &priv->state);


 if (test_bit(NIC_STATE_DOWN, &priv->state) ||
     test_bit(NIC_STATE_REMOVING, &priv->state) ||
     test_bit(NIC_STATE_RESETTING, &priv->state))
  return;

 hns_nic_dump(priv);
 netdev_info(priv->netdev, "try to reset %s port!\n",
      (type == HNAE_PORT_DEBUG ? "debug" : "service"));

 rtnl_lock();

 netif_trans_update(priv->netdev);
 hns_nic_net_reinit(priv->netdev);

 rtnl_unlock();
}

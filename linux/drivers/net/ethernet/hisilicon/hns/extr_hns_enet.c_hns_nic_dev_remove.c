
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct net_device {scalar_t__ reg_state; scalar_t__ phydev; } ;
struct TYPE_2__ {int * notifier_call; } ;
struct hns_nic_priv {int fwnode; int service_task; int state; TYPE_1__ notifier_block; int * ae_handle; int * ring_data; } ;


 int IS_ERR_OR_NULL (int *) ;
 scalar_t__ NETREG_UNINITIALIZED ;
 int NIC_STATE_REMOVING ;
 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int hnae_put_handle (int *) ;
 int hnae_unregister_notifier (TYPE_1__*) ;
 int hns_nic_uninit_ring_data (struct hns_nic_priv*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int phy_disconnect (scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int set_bit (int ,int *) ;
 int to_of_node (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int hns_nic_dev_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct hns_nic_priv *priv = netdev_priv(ndev);

 if (ndev->reg_state != NETREG_UNINITIALIZED)
  unregister_netdev(ndev);

 if (priv->ring_data)
  hns_nic_uninit_ring_data(priv);
 priv->ring_data = ((void*)0);

 if (ndev->phydev)
  phy_disconnect(ndev->phydev);

 if (!IS_ERR_OR_NULL(priv->ae_handle))
  hnae_put_handle(priv->ae_handle);
 priv->ae_handle = ((void*)0);
 if (priv->notifier_block.notifier_call)
  hnae_unregister_notifier(&priv->notifier_block);
 priv->notifier_block.notifier_call = ((void*)0);

 set_bit(NIC_STATE_REMOVING, &priv->state);
 (void)cancel_work_sync(&priv->service_task);


 of_node_put(to_of_node(priv->fwnode));

 free_netdev(ndev);
 return 0;
}

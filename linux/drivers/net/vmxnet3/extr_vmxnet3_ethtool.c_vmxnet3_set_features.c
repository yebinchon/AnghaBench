
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmxnet3_adapter {int cmd_lock; TYPE_3__* shared; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {int uptFeatures; } ;
struct TYPE_5__ {TYPE_1__ misc; } ;
struct TYPE_6__ {TYPE_2__ devRead; } ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int UPT1_F_LRO ;
 int UPT1_F_RXCSUM ;
 int UPT1_F_RXVLAN ;
 int VMXNET3_CMD_UPDATE_FEATURE ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int vmxnet3_set_features(struct net_device *netdev, netdev_features_t features)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 unsigned long flags;
 netdev_features_t changed = features ^ netdev->features;

 if (changed & (NETIF_F_RXCSUM | NETIF_F_LRO |
         NETIF_F_HW_VLAN_CTAG_RX)) {
  if (features & NETIF_F_RXCSUM)
   adapter->shared->devRead.misc.uptFeatures |=
   UPT1_F_RXCSUM;
  else
   adapter->shared->devRead.misc.uptFeatures &=
   ~UPT1_F_RXCSUM;


  if (features & NETIF_F_LRO)
   adapter->shared->devRead.misc.uptFeatures |=
       UPT1_F_LRO;
  else
   adapter->shared->devRead.misc.uptFeatures &=
       ~UPT1_F_LRO;

  if (features & NETIF_F_HW_VLAN_CTAG_RX)
   adapter->shared->devRead.misc.uptFeatures |=
   UPT1_F_RXVLAN;
  else
   adapter->shared->devRead.misc.uptFeatures &=
   ~UPT1_F_RXVLAN;

  spin_lock_irqsave(&adapter->cmd_lock, flags);
  VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
           VMXNET3_CMD_UPDATE_FEATURE);
  spin_unlock_irqrestore(&adapter->cmd_lock, flags);
 }
 return 0;
}

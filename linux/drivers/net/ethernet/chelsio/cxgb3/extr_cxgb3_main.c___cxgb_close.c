
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct port_info {int port_id; TYPE_2__ mac; TYPE_3__ phy; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int open_device_map; int tdev; int adap_check_task; int work_lock; } ;
struct TYPE_4__ {int (* power_down ) (TYPE_3__*,int) ;} ;


 scalar_t__ A_XGM_INT_STATUS ;
 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int OFFLOAD_PORT_DOWN ;
 int PORT_MASK ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int*) ;
 int cxgb3_event_notify (int *,int ,int ) ;
 int cxgb_down (struct adapter*,int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (TYPE_3__*,int) ;
 int t3_mac_disable (TYPE_2__*,int) ;
 int t3_port_intr_disable (struct adapter*,int ) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_xgm_intr_disable (struct adapter*,int ) ;

__attribute__((used)) static int __cxgb_close(struct net_device *dev, int on_wq)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;


 if (!adapter->open_device_map)
  return 0;


 t3_xgm_intr_disable(adapter, pi->port_id);
 t3_read_reg(adapter, A_XGM_INT_STATUS + pi->mac.offset);

 t3_port_intr_disable(adapter, pi->port_id);
 netif_tx_stop_all_queues(dev);
 pi->phy.ops->power_down(&pi->phy, 1);
 netif_carrier_off(dev);
 t3_mac_disable(&pi->mac, MAC_DIRECTION_TX | MAC_DIRECTION_RX);

 spin_lock_irq(&adapter->work_lock);
 clear_bit(pi->port_id, &adapter->open_device_map);
 spin_unlock_irq(&adapter->work_lock);

 if (!(adapter->open_device_map & PORT_MASK))
  cancel_delayed_work_sync(&adapter->adap_check_task);

 if (!adapter->open_device_map)
  cxgb_down(adapter, on_wq);

 cxgb3_event_notify(&adapter->tdev, OFFLOAD_PORT_DOWN, pi->port_id);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac {scalar_t__ offset; } ;
struct port_info {int port_id; struct cmac mac; } ;
struct net_device {int dummy; } ;
struct adapter {struct net_device** port; } ;


 scalar_t__ A_XGM_INT_CAUSE ;
 scalar_t__ A_XGM_INT_ENABLE ;
 scalar_t__ A_XGM_INT_STATUS ;
 int F_XGM_INT ;
 int MAC_DIRECTION_TX ;
 int disable_tx_fifo_drain (struct adapter*,struct port_info*) ;
 int enable_tx_fifo_drain (struct adapter*,struct port_info*) ;
 int link_report (struct net_device*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int t3_mac_enable (struct cmac*,int ) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int ,int ) ;
 int t3_write_reg (struct adapter*,scalar_t__,int ) ;
 int t3_xgm_intr_disable (struct adapter*,int ) ;
 int t3_xgm_intr_enable (struct adapter*,int ) ;

void t3_os_link_fault(struct adapter *adap, int port_id, int state)
{
 struct net_device *dev = adap->port[port_id];
 struct port_info *pi = netdev_priv(dev);

 if (state == netif_carrier_ok(dev))
  return;

 if (state) {
  struct cmac *mac = &pi->mac;

  netif_carrier_on(dev);

  disable_tx_fifo_drain(adap, pi);


  t3_xgm_intr_disable(adap, pi->port_id);
  t3_read_reg(adap, A_XGM_INT_STATUS +
        pi->mac.offset);
  t3_write_reg(adap,
        A_XGM_INT_CAUSE + pi->mac.offset,
        F_XGM_INT);

  t3_set_reg_field(adap,
     A_XGM_INT_ENABLE +
     pi->mac.offset,
     F_XGM_INT, F_XGM_INT);
  t3_xgm_intr_enable(adap, pi->port_id);

  t3_mac_enable(mac, MAC_DIRECTION_TX);
 } else {
  netif_carrier_off(dev);


  enable_tx_fifo_drain(adap, pi);
 }
 link_report(dev);
}

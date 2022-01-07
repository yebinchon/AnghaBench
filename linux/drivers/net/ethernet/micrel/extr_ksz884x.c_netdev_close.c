
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int irq; int dev_addr; } ;
struct ksz_port {int first_port; } ;
struct ksz_hw {int dev_count; int features; int tx_desc_info; int rx_desc_info; int promiscuous; int all_multi; TYPE_1__* ksz_switch; } ;
struct dev_priv {scalar_t__ promiscuous; scalar_t__ multicast; int monitor_timer_info; struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {int dev; int tx_tasklet; int rx_tasklet; int mib_read; int mib_timer_info; int opened; int wol_enable; struct ksz_hw hw; } ;
struct TYPE_2__ {int member; } ;


 int HZ ;
 int STP_STATE_DISABLED ;
 int STP_SUPPORT ;
 int bridge_change (struct ksz_hw*) ;
 int flush_work (int *) ;
 int free_irq (int ,int ) ;
 int hw_clr_multicast (struct ksz_hw*) ;
 int hw_del_addr (struct ksz_hw*,int ) ;
 int hw_dis_intr (struct ksz_hw*) ;
 int hw_disable (struct ksz_hw*) ;
 int hw_reset_pkts (int *) ;
 int ksz_stop_timer (int *) ;
 int msleep (int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int port_set_power_saving (struct ksz_port*,int) ;
 int port_set_stp_state (struct ksz_hw*,int,int ) ;
 int sw_clr_sta_mac_table (struct ksz_hw*) ;
 int tasklet_kill (int *) ;
 int transmit_cleanup (struct dev_info*,int ) ;

__attribute__((used)) static int netdev_close(struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_port *port = &priv->port;
 struct ksz_hw *hw = &hw_priv->hw;
 int pi;

 netif_stop_queue(dev);

 ksz_stop_timer(&priv->monitor_timer_info);


 if (hw->dev_count > 1) {
  port_set_stp_state(hw, port->first_port, STP_STATE_DISABLED);


  if (hw->features & STP_SUPPORT) {
   pi = 1 << port->first_port;
   if (hw->ksz_switch->member & pi) {
    hw->ksz_switch->member &= ~pi;
    bridge_change(hw);
   }
  }
 }
 if (port->first_port > 0)
  hw_del_addr(hw, dev->dev_addr);
 if (!hw_priv->wol_enable)
  port_set_power_saving(port, 1);

 if (priv->multicast)
  --hw->all_multi;
 if (priv->promiscuous)
  --hw->promiscuous;

 hw_priv->opened--;
 if (!(hw_priv->opened)) {
  ksz_stop_timer(&hw_priv->mib_timer_info);
  flush_work(&hw_priv->mib_read);

  hw_dis_intr(hw);
  hw_disable(hw);
  hw_clr_multicast(hw);


  msleep(2000 / HZ);

  tasklet_kill(&hw_priv->rx_tasklet);
  tasklet_kill(&hw_priv->tx_tasklet);
  free_irq(dev->irq, hw_priv->dev);

  transmit_cleanup(hw_priv, 0);
  hw_reset_pkts(&hw->rx_desc_info);
  hw_reset_pkts(&hw->tx_desc_info);


  if (hw->features & STP_SUPPORT)
   sw_clr_sta_mac_table(hw);
 }

 return 0;
}

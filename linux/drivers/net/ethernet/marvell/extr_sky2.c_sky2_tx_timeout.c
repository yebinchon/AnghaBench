
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {size_t port; int tx_prod; int tx_cons; struct sky2_hw* hw; } ;
struct sky2_hw {int restart_work; } ;
struct net_device {int dummy; } ;


 int KERN_DEBUG ;
 int Q_ADDR (int ,int ) ;
 int Q_DONE ;
 int STAT_TXA1_RIDX ;
 int STAT_TXA2_RIDX ;
 int netdev_printk (int ,struct net_device*,char*,int ,int ,int ,int ) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_err (struct sky2_port*,int ,struct net_device*,char*) ;
 int schedule_work (int *) ;
 int sky2_read16 (struct sky2_hw*,int ) ;
 int timer ;
 int * txqaddr ;

__attribute__((used)) static void sky2_tx_timeout(struct net_device *dev)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;

 netif_err(sky2, timer, dev, "tx timeout\n");

 netdev_printk(KERN_DEBUG, dev, "transmit ring %u .. %u report=%u done=%u\n",
        sky2->tx_cons, sky2->tx_prod,
        sky2_read16(hw, sky2->port == 0 ? STAT_TXA1_RIDX : STAT_TXA2_RIDX),
        sky2_read16(hw, Q_ADDR(txqaddr[sky2->port], Q_DONE)));


 schedule_work(&hw->restart_work);
}

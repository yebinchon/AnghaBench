
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dev; } ;


 int KERN_DEBUG ;
 int ifdown ;
 int netif_printk (struct niu*,int ,int ,int ,char*) ;
 int niu_disable_ipp (struct niu*) ;
 int niu_enable_interrupts (struct niu*,int ) ;
 int niu_enable_rx_mac (struct niu*,int ) ;
 int niu_reset_rx_channels (struct niu*) ;
 int niu_reset_tx_channels (struct niu*) ;
 int niu_stop_rx_channels (struct niu*) ;
 int niu_stop_tx_channels (struct niu*) ;

__attribute__((used)) static void niu_stop_hw(struct niu *np)
{
 netif_printk(np, ifdown, KERN_DEBUG, np->dev, "Disable interrupts\n");
 niu_enable_interrupts(np, 0);

 netif_printk(np, ifdown, KERN_DEBUG, np->dev, "Disable RX MAC\n");
 niu_enable_rx_mac(np, 0);

 netif_printk(np, ifdown, KERN_DEBUG, np->dev, "Disable IPP\n");
 niu_disable_ipp(np);

 netif_printk(np, ifdown, KERN_DEBUG, np->dev, "Stop TX channels\n");
 niu_stop_tx_channels(np);

 netif_printk(np, ifdown, KERN_DEBUG, np->dev, "Stop RX channels\n");
 niu_stop_rx_channels(np);

 netif_printk(np, ifdown, KERN_DEBUG, np->dev, "Reset TX channels\n");
 niu_reset_tx_channels(np);

 netif_printk(np, ifdown, KERN_DEBUG, np->dev, "Reset RX channels\n");
 niu_reset_rx_channels(np);
}

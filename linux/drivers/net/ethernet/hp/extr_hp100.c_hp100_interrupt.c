
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {int base_addr; int name; } ;
struct hp100_private {int mode; int lock; } ;
typedef int irqreturn_t ;


 int HP100_MISC_ERROR ;
 int HP100_RX_ERROR ;
 int HP100_RX_PACKET ;
 int HP100_RX_PDA_ZERO ;
 int HP100_RX_PDL_FILL_COMPL ;
 int HP100_TX_COMPLETE ;
 int HP100_TX_ERROR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_STATUS ;
 int RX_PDL ;
 int RX_PKT_CNT ;
 int TRACE ;
 int TX_PDL ;
 int TX_PKT_CNT ;
 int hp100_clean_txring (struct net_device*) ;
 int hp100_inb (int ) ;
 int hp100_ints_off () ;
 int hp100_ints_on () ;
 int hp100_inw (int ) ;
 int hp100_misc_interrupt (struct net_device*) ;
 int hp100_outw (int,int ) ;
 int hp100_rx (struct net_device*) ;
 int hp100_rx_bm (struct net_device*) ;
 int hp100_rxfill (struct net_device*) ;
 int hp100_update_stats (struct net_device*) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t hp100_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 struct hp100_private *lp = netdev_priv(dev);

 int ioaddr;
 u_int val;

 if (dev == ((void*)0))
  return IRQ_NONE;
 ioaddr = dev->base_addr;

 spin_lock(&lp->lock);

 hp100_ints_off();






 val = hp100_inw(IRQ_STATUS);






 if (val == 0) {
  spin_unlock(&lp->lock);
  hp100_ints_on();
  return IRQ_NONE;
 }
 if (val & HP100_RX_PDL_FILL_COMPL) {
  if (lp->mode == 1)
   hp100_rx_bm(dev);
  else {
   printk("hp100: %s: rx_pdl_fill_compl interrupt although not busmaster?\n", dev->name);
  }
 }
 if (val & HP100_RX_PACKET) {
  if (lp->mode != 1)
   hp100_rx(dev);
  else if (!(val & HP100_RX_PDL_FILL_COMPL)) {

   hp100_rx_bm(dev);
  }
 }







 hp100_outw(val, IRQ_STATUS);







 if (val & (HP100_TX_ERROR | HP100_RX_ERROR)) {



  hp100_update_stats(dev);
  if (lp->mode == 1) {
   hp100_rxfill(dev);
   hp100_clean_txring(dev);
  }
 }




 if ((lp->mode == 1) && (val & (HP100_RX_PDA_ZERO)))
  hp100_rxfill(dev);





 if ((lp->mode == 1) && (val & (HP100_TX_COMPLETE)))
  hp100_clean_txring(dev);





 if (val & HP100_MISC_ERROR) {





  if (lp->mode == 1) {
   hp100_clean_txring(dev);
   hp100_rxfill(dev);
  }
  hp100_misc_interrupt(dev);
 }

 spin_unlock(&lp->lock);
 hp100_ints_on();
 return IRQ_HANDLED;
}

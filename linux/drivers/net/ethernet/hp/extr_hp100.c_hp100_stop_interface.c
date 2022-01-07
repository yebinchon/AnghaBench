
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {int base_addr; int name; } ;
struct hp100_private {int mode; } ;


 int HP100_HW_RST ;
 int HP100_INT_EN ;
 int HP100_MMAP_DIS ;
 int HP100_RESET_LB ;
 int HP100_RX_EN ;
 int HP100_RX_IDLE ;
 int HP100_SET_HB ;
 int HP100_TRI_INT ;
 int HP100_TX_EN ;
 int HP100_TX_IDLE ;
 int MAC_CFG_1 ;
 int MAC_CTRL ;
 int OPTION_LSW ;
 int PERFORMANCE ;
 int TRACE ;
 int hp100_BM_shutdown (struct net_device*) ;
 int hp100_andb (int,int ) ;
 int hp100_inb (int ) ;
 int hp100_inw (int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static void hp100_stop_interface(struct net_device *dev)
{
 struct hp100_private *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;
 u_int val;






 if (lp->mode == 1)
  hp100_BM_shutdown(dev);
 else {

  hp100_outw(HP100_INT_EN | HP100_RESET_LB |
      HP100_TRI_INT | HP100_MMAP_DIS | HP100_SET_HB,
      OPTION_LSW);
  val = hp100_inw(OPTION_LSW);

  hp100_page(MAC_CTRL);
  hp100_andb(~(HP100_RX_EN | HP100_TX_EN), MAC_CFG_1);

  if (!(val & HP100_HW_RST))
   return;

  for (val = 0; val < 6000; val++)
   if ((hp100_inb(MAC_CFG_1) & (HP100_TX_IDLE | HP100_RX_IDLE)) == (HP100_TX_IDLE | HP100_RX_IDLE)) {
    hp100_page(PERFORMANCE);
    return;
   }
  printk("hp100: %s: hp100_stop_interface - timeout\n", dev->name);
  hp100_page(PERFORMANCE);
 }
}

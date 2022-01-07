
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int name; } ;
struct hp100_private {int mode; scalar_t__ lan_type; } ;


 int HP100_ADV_NXT_PKT ;
 int HP100_BM_READ ;
 int HP100_BM_WRITE ;
 int HP100_DEBUG_EN ;
 int HP100_EE_EN ;
 int HP100_FAKE_INT ;
 int HP100_INT_EN ;
 int HP100_IO_EN ;
 scalar_t__ HP100_LAN_100 ;
 scalar_t__ HP100_LAN_ERR ;
 int HP100_MEM_EN ;
 int HP100_MMAP_DIS ;
 int HP100_PRIORITY_TX ;
 int HP100_RESET_HB ;
 int HP100_RESET_LB ;
 int HP100_RX_EN ;
 int HP100_RX_HDR ;
 int HP100_SET_HB ;
 int HP100_TRI_INT ;
 int HP100_TX_CMD ;
 int HP100_TX_EN ;
 int IRQ_MASK ;
 int IRQ_STATUS ;
 int MAC_CFG_1 ;
 int MAC_CTRL ;
 int OPTION_LSW ;
 int OPTION_MSW ;
 int PERFORMANCE ;
 int TRACE ;
 int hp100_BM_shutdown (struct net_device*) ;
 int hp100_andb (int,int ) ;
 int hp100_cascade_reset (struct net_device*,int) ;
 int hp100_load_eeprom (struct net_device*,int ) ;
 int hp100_login_to_vg_hub (struct net_device*,int ) ;
 int hp100_mmuinit (struct net_device*) ;
 int hp100_outb (int,int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;
 int wait () ;

__attribute__((used)) static void hp100_hwinit(struct net_device *dev)
{
 int ioaddr = dev->base_addr;
 struct hp100_private *lp = netdev_priv(dev);
 hp100_page(PERFORMANCE);
 hp100_outw(0xfefe, IRQ_MASK);
 hp100_outw(0xffff, IRQ_STATUS);

 hp100_outw(HP100_INT_EN | HP100_RESET_LB, OPTION_LSW);
 hp100_outw(HP100_TRI_INT | HP100_SET_HB, OPTION_LSW);

 if (lp->mode == 1) {
  hp100_BM_shutdown(dev);
  wait();
 } else {
  hp100_outw(HP100_INT_EN | HP100_RESET_LB, OPTION_LSW);
  hp100_cascade_reset(dev, 1);
  hp100_page(MAC_CTRL);
  hp100_andb(~(HP100_RX_EN | HP100_TX_EN), MAC_CFG_1);
 }


 hp100_load_eeprom(dev, 0);

 wait();


 hp100_cascade_reset(dev, 1);


 hp100_outw(HP100_DEBUG_EN |
     HP100_RX_HDR |
     HP100_EE_EN |
     HP100_BM_WRITE |
     HP100_BM_READ | HP100_RESET_HB |
     HP100_FAKE_INT |
     HP100_INT_EN |
     HP100_MEM_EN |
     HP100_IO_EN | HP100_RESET_LB, OPTION_LSW);

 hp100_outw(HP100_TRI_INT |
     HP100_MMAP_DIS | HP100_SET_HB, OPTION_LSW);

 hp100_outb(HP100_PRIORITY_TX |
     HP100_ADV_NXT_PKT |
     HP100_TX_CMD | HP100_RESET_LB, OPTION_MSW);
 hp100_mmuinit(dev);


 wait();


 hp100_cascade_reset(dev, 0);




 if ((lp->lan_type == HP100_LAN_100) || (lp->lan_type == HP100_LAN_ERR))
  hp100_login_to_vg_hub(dev, 0);

}

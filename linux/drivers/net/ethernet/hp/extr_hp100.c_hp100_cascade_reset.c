
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct net_device {int base_addr; int name; } ;
struct hp100_private {scalar_t__ chip; } ;


 scalar_t__ HP100_CHIPID_LASSEN ;
 int HP100_HW_RST ;
 int HP100_PCI_RESET ;
 int HP100_RESET_LB ;
 int HP100_SET_LB ;
 int HW_MAP ;
 int OPTION_LSW ;
 int PCICTRL2 ;
 int PERFORMANCE ;
 int TRACE ;
 int hp100_andb (int ,int ) ;
 int hp100_orb (int ,int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void hp100_cascade_reset(struct net_device *dev, u_short enable)
{
 int ioaddr = dev->base_addr;
 struct hp100_private *lp = netdev_priv(dev);






 if (enable) {
  hp100_outw(HP100_HW_RST | HP100_RESET_LB, OPTION_LSW);
  if (lp->chip == HP100_CHIPID_LASSEN) {

   hp100_page(HW_MAP);
   hp100_andb(~HP100_PCI_RESET, PCICTRL2);
   hp100_orb(HP100_PCI_RESET, PCICTRL2);



   udelay(400);
   hp100_andb(~HP100_PCI_RESET, PCICTRL2);
   hp100_page(PERFORMANCE);
  }
 } else {
  hp100_outw(HP100_HW_RST | HP100_SET_LB, OPTION_LSW);
  udelay(400);
  hp100_page(PERFORMANCE);
 }
}

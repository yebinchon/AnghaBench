
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {TYPE_1__* phy; } ;
struct TYPE_2__ {scalar_t__ id; int addr; } ;


 scalar_t__ BROADCOM_T4 ;
 int DE4X5_MII ;
 int DEBUG_MII ;
 int MII_CR ;
 int MII_ID0 ;
 int MII_ID1 ;
 int MII_SR ;
 int de4x5_debug ;
 int mii_rd (int,int ,int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static void
de4x5_dbg_mii(struct net_device *dev, int k)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;

    if (de4x5_debug & DEBUG_MII) {
 printk("\nMII device address: %d\n", lp->phy[k].addr);
 printk("MII CR:  %x\n",mii_rd(MII_CR,lp->phy[k].addr,DE4X5_MII));
 printk("MII SR:  %x\n",mii_rd(MII_SR,lp->phy[k].addr,DE4X5_MII));
 printk("MII ID0: %x\n",mii_rd(MII_ID0,lp->phy[k].addr,DE4X5_MII));
 printk("MII ID1: %x\n",mii_rd(MII_ID1,lp->phy[k].addr,DE4X5_MII));
 if (lp->phy[k].id != BROADCOM_T4) {
     printk("MII ANA: %x\n",mii_rd(0x04,lp->phy[k].addr,DE4X5_MII));
     printk("MII ANC: %x\n",mii_rd(0x05,lp->phy[k].addr,DE4X5_MII));
 }
 printk("MII 16:  %x\n",mii_rd(0x10,lp->phy[k].addr,DE4X5_MII));
 if (lp->phy[k].id != BROADCOM_T4) {
     printk("MII 17:  %x\n",mii_rd(0x11,lp->phy[k].addr,DE4X5_MII));
     printk("MII 18:  %x\n",mii_rd(0x12,lp->phy[k].addr,DE4X5_MII));
 } else {
     printk("MII 20:  %x\n",mii_rd(0x14,lp->phy[k].addr,DE4X5_MII));
 }
    }
}

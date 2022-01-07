
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct phy_table {int dummy; } ;
struct net_device {int name; int base_addr; } ;
struct de4x5_private {size_t active; int useMII; int mii_cnt; TYPE_2__* phy; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_5__ {int value; int mask; int reg; } ;
struct TYPE_6__ {int addr; int id; TYPE_1__ spd; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DE4X5_MAX_MII ;
 int DE4X5_MAX_PHY ;
 int DE4X5_MII ;
 int DEBUG_MII ;
 int GENERIC_MASK ;
 int GENERIC_REG ;
 int GENERIC_VALUE ;
 int MII_CR ;
 int MII_CR_RST ;
 int de4x5_dbg_mii (struct net_device*,int) ;
 int de4x5_debug ;
 scalar_t__ de4x5_reset_phy (struct net_device*) ;
 int memcpy (char*,char*,int) ;
 int mii_get_oui (int,int ) ;
 int mii_rd (int ,int,int ) ;
 int mii_wr (int,int ,int,int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 TYPE_3__* phy_info ;
 int printk (char*,...) ;
 int udelay (int) ;

__attribute__((used)) static int
mii_get_phy(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int i, j, k, n, limit=ARRAY_SIZE(phy_info);
    int id;

    lp->active = 0;
    lp->useMII = 1;


    for (n=0, lp->mii_cnt=0, i=1; !((i==1) && (n==1)); i=(i+1)%DE4X5_MAX_MII) {
 lp->phy[lp->active].addr = i;
 if (i==0) n++;
 while (de4x5_reset_phy(dev)<0) udelay(100);
 id = mii_get_oui(i, DE4X5_MII);
 if ((id == 0) || (id == 65535)) continue;
 for (j=0; j<limit; j++) {
     if (id != phy_info[j].id) continue;
     for (k=0; k < DE4X5_MAX_PHY && lp->phy[k].id; k++);
     if (k < DE4X5_MAX_PHY) {
  memcpy((char *)&lp->phy[k],
         (char *)&phy_info[j], sizeof(struct phy_table));
  lp->phy[k].addr = i;
  lp->mii_cnt++;
  lp->active++;
     } else {
  goto purgatory;
     }
     break;
 }
 if ((j == limit) && (i < DE4X5_MAX_MII)) {
     for (k=0; k < DE4X5_MAX_PHY && lp->phy[k].id; k++);
     lp->phy[k].addr = i;
     lp->phy[k].id = id;
     lp->phy[k].spd.reg = GENERIC_REG;
     lp->phy[k].spd.mask = GENERIC_MASK;
     lp->phy[k].spd.value = GENERIC_VALUE;
     lp->mii_cnt++;
     lp->active++;
     printk("%s: Using generic MII device control. If the board doesn't operate,\nplease mail the following dump to the author:\n", dev->name);
     j = de4x5_debug;
     de4x5_debug |= DEBUG_MII;
     de4x5_dbg_mii(dev, k);
     de4x5_debug = j;
     printk("\n");
 }
    }
  purgatory:
    lp->active = 0;
    if (lp->phy[0].id) {
 for (k=0; k < DE4X5_MAX_PHY && lp->phy[k].id; k++) {
     mii_wr(MII_CR_RST, MII_CR, lp->phy[k].addr, DE4X5_MII);
     while (mii_rd(MII_CR, lp->phy[k].addr, DE4X5_MII) & MII_CR_RST);

     de4x5_dbg_mii(dev, k);
 }
    }
    if (!lp->mii_cnt) lp->useMII = 0;

    return lp->mii_cnt;
}

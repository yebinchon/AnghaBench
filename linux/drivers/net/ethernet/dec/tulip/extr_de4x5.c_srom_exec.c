
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
typedef int u_char ;
struct net_device {int base_addr; } ;
struct TYPE_2__ {int csr13; int csr14; } ;
struct de4x5_private {int ibn; scalar_t__ chipset; TYPE_1__ cache; } ;


 scalar_t__ DC21140 ;
 int DE4X5_SICR ;
 int DE4X5_STRR ;
 int RESET_SIA ;
 int gep_wr (int ,struct net_device*) ;
 int get_unaligned_le16 (int ) ;
 int mdelay (int) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int ,int ) ;

__attribute__((used)) static void
srom_exec(struct net_device *dev, u_char *p)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    u_char count = (p ? *p++ : 0);
    u_short *w = (u_short *)p;

    if (((lp->ibn != 1) && (lp->ibn != 3) && (lp->ibn != 5)) || !count) return;

    if (lp->chipset != DC21140) RESET_SIA;

    while (count--) {
 gep_wr(((lp->chipset==DC21140) && (lp->ibn!=5) ?
                                     *p++ : get_unaligned_le16(w++)), dev);
 mdelay(2);
    }

    if (lp->chipset != DC21140) {
 outl(lp->cache.csr14, DE4X5_STRR);
 outl(lp->cache.csr13, DE4X5_SICR);
    }
}

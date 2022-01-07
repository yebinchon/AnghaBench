
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {int timeout; scalar_t__ chipset; scalar_t__ useSROM; } ;
typedef int s32 ;


 scalar_t__ DC21041 ;
 int DE4X5_IMR ;
 int DE4X5_SISR ;
 int DE4X5_STS ;
 int TIMER_CB ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int,int ) ;
 int reset_init_sia (struct net_device*,int,int,int) ;

__attribute__((used)) static int
test_media(struct net_device *dev, s32 irqs, s32 irq_mask, s32 csr13, s32 csr14, s32 csr15, s32 msec)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    s32 sts, csr12;

    if (lp->timeout < 0) {
 lp->timeout = msec/100;
 if (!lp->useSROM) {
     reset_init_sia(dev, csr13, csr14, csr15);
 }


 outl(irq_mask, DE4X5_IMR);


 sts = inl(DE4X5_STS);
 outl(sts, DE4X5_STS);


 if ((lp->chipset == DC21041) || lp->useSROM) {
     csr12 = inl(DE4X5_SISR);
     outl(csr12, DE4X5_SISR);
 }
    }

    sts = inl(DE4X5_STS) & ~TIMER_CB;

    if (!(sts & irqs) && --lp->timeout) {
 sts = 100 | TIMER_CB;
    } else {
 lp->timeout = -1;
    }

    return sts;
}

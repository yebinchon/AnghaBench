
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {scalar_t__ chipset; } ;


 scalar_t__ DC21040 ;
 scalar_t__ DC21041 ;
 int DE4X5_OMR ;
 int DE4X5_STS ;
 int OMR_SF ;
 int OMR_SR ;
 int OMR_ST ;
 int OMR_TR ;
 int STS_TS ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int,int ) ;

__attribute__((used)) static int
de4x5_txur(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int omr;

    omr = inl(DE4X5_OMR);
    if (!(omr & OMR_SF) || (lp->chipset==DC21041) || (lp->chipset==DC21040)) {
 omr &= ~(OMR_ST|OMR_SR);
 outl(omr, DE4X5_OMR);
 while (inl(DE4X5_STS) & STS_TS);
 if ((omr & OMR_TR) < OMR_TR) {
     omr += 0x4000;
 } else {
     omr |= OMR_SF;
 }
 outl(omr | OMR_ST | OMR_SR, DE4X5_OMR);
    }

    return 0;
}

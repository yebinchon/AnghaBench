
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {int dummy; } ;
typedef int s32 ;


 int DE4X5_OMR ;
 int DE4X5_STS ;
 int ENABLE_IRQs ;
 int OMR_SR ;
 int UNMASK_IRQs ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int,int ) ;

__attribute__((used)) static void
de4x5_setup_intr(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    s32 imr, sts;

    if (inl(DE4X5_OMR) & OMR_SR) {
 imr = 0;
 UNMASK_IRQs;
 sts = inl(DE4X5_STS);
 outl(sts, DE4X5_STS);
 ENABLE_IRQs;
    }
}

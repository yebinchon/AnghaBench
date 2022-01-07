
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int base_addr; } ;
struct TYPE_2__ {int csr15; int csr14; int csr13; int gep; int gepc; } ;
struct de4x5_private {int infoblock_csr6; int chipset; TYPE_1__ cache; } ;
typedef int s32 ;


 int DC21140 ;
 int DC2114x ;
 int DE4X5_MFC ;
 int DE4X5_OMR ;
 int OMR_FDX ;
 int OMR_HBD ;
 int OMR_PCS ;
 int OMR_PS ;
 int OMR_SCR ;
 int OMR_TTM ;
 int RESET_DE4X5 ;
 int STOP_DE4X5 ;
 int gep_wr (int ,struct net_device*) ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int,int ) ;
 int reset_init_sia (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static long
de4x5_switch_mac_port(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    s32 omr;

    STOP_DE4X5;


    omr = (inl(DE4X5_OMR) & ~(OMR_PS | OMR_HBD | OMR_TTM | OMR_PCS | OMR_SCR |
                                                OMR_FDX));
    omr |= lp->infoblock_csr6;
    if (omr & OMR_PS) omr |= OMR_HBD;
    outl(omr, DE4X5_OMR);


    RESET_DE4X5;


    if (lp->chipset == DC21140) {
 gep_wr(lp->cache.gepc, dev);
 gep_wr(lp->cache.gep, dev);
    } else if ((lp->chipset & ~0x0ff) == DC2114x) {
 reset_init_sia(dev, lp->cache.csr13, lp->cache.csr14, lp->cache.csr15);
    }


    outl(omr, DE4X5_OMR);


    inl(DE4X5_MFC);

    return omr;
}

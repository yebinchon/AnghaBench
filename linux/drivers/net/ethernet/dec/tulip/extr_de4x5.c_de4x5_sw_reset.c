
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct sk_buff {int dummy; } ;
struct net_device {int name; int base_addr; } ;
struct de4x5_private {size_t active; int chipset; scalar_t__ dma_rings; size_t tx_new; size_t tx_old; int rxRingSize; int txRingSize; TYPE_3__* tx_ring; int setup_frame; TYPE_2__* rx_ring; scalar_t__ rx_old; scalar_t__ rx_new; int setup_f; scalar_t__ infoblock_csr6; TYPE_1__* phy; int useSROM; } ;
struct de4x5_desc {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {void* status; } ;
struct TYPE_5__ {void* status; } ;
struct TYPE_4__ {scalar_t__ id; } ;


 scalar_t__ BMR_RML ;
 int DC21140 ;
 int DC2114x ;
 int DE4X5_BMR ;
 scalar_t__ DE4X5_CACHE_ALIGN ;
 int DE4X5_OMR ;
 int DE4X5_RRBA ;
 int DE4X5_STS ;
 int DE4X5_TRBA ;
 scalar_t__ DESC_SKIP_LEN ;
 int EIO ;
 int NUM_RX_DESC ;
 scalar_t__ OMR_HBD ;
 scalar_t__ OMR_PR ;
 scalar_t__ OMR_PS ;
 scalar_t__ OMR_SB ;
 scalar_t__ OMR_SDP ;
 scalar_t__ OMR_ST ;
 scalar_t__ OMR_TTM ;
 scalar_t__ PBL_4 ;
 scalar_t__ PBL_8 ;
 int PERFECT ;
 int PERFECT_F ;
 int R_OWN ;
 int SETUP_FRAME_LEN ;
 int SetMulticastFilter (struct net_device*) ;
 int TD_SET ;
 int barrier () ;
 void* cpu_to_le32 (int ) ;
 int de4x5_switch_mac_port (struct net_device*) ;
 scalar_t__ inl (int ) ;
 scalar_t__ le32_to_cpu (void*) ;
 int load_packet (struct net_device*,int ,int,struct sk_buff*) ;
 int mdelay (int) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (scalar_t__,int ) ;
 int printk (char*,int ,scalar_t__) ;

__attribute__((used)) static int
de4x5_sw_reset(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int i, j, status = 0;
    s32 bmr, omr;


    if (!lp->useSROM) {
 if (lp->phy[lp->active].id != 0) {
     lp->infoblock_csr6 = OMR_SDP | OMR_PS | OMR_HBD;
 } else {
     lp->infoblock_csr6 = OMR_SDP | OMR_TTM;
 }
 de4x5_switch_mac_port(dev);
    }






    bmr = (lp->chipset==DC21140 ? PBL_8 : PBL_4) | DESC_SKIP_LEN | DE4X5_CACHE_ALIGN;
    bmr |= ((lp->chipset & ~0x00ff)==DC2114x ? BMR_RML : 0);
    outl(bmr, DE4X5_BMR);

    omr = inl(DE4X5_OMR) & ~OMR_PR;
    if (lp->chipset == DC21140) {
 omr |= (OMR_SDP | OMR_SB);
    }
    lp->setup_f = PERFECT;
    outl(lp->dma_rings, DE4X5_RRBA);
    outl(lp->dma_rings + NUM_RX_DESC * sizeof(struct de4x5_desc),
  DE4X5_TRBA);

    lp->rx_new = lp->rx_old = 0;
    lp->tx_new = lp->tx_old = 0;

    for (i = 0; i < lp->rxRingSize; i++) {
 lp->rx_ring[i].status = cpu_to_le32(R_OWN);
    }

    for (i = 0; i < lp->txRingSize; i++) {
 lp->tx_ring[i].status = cpu_to_le32(0);
    }

    barrier();


    SetMulticastFilter(dev);

    load_packet(dev, lp->setup_frame, PERFECT_F|TD_SET|SETUP_FRAME_LEN, (struct sk_buff *)1);
    outl(omr|OMR_ST, DE4X5_OMR);



    for (j=0, i=0;(i<500) && (j==0);i++) {
 mdelay(1);
 if ((s32)le32_to_cpu(lp->tx_ring[lp->tx_new].status) >= 0) j=1;
    }
    outl(omr, DE4X5_OMR);

    if (j == 0) {
 printk("%s: Setup frame timed out, status %08x\n", dev->name,
        inl(DE4X5_STS));
 status = -EIO;
    }

    lp->tx_new = (lp->tx_new + 1) % lp->txRingSize;
    lp->tx_old = lp->tx_new;

    return status;
}

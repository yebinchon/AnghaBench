
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int flags; int base_addr; } ;
struct de4x5_private {scalar_t__ state; int tx_new; int txRingSize; int setup_frame; } ;


 int DE4X5_OMR ;
 int DE4X5_TPD ;
 int IFF_PROMISC ;
 int OMR_PR ;
 scalar_t__ OPEN ;
 int PERFECT_F ;
 int POLL_DEMAND ;
 int SETUP_FRAME_LEN ;
 int SetMulticastFilter (struct net_device*) ;
 int TD_IC ;
 int TD_SET ;
 int inl (int ) ;
 int load_packet (struct net_device*,int ,int,struct sk_buff*) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int outl (int ,int ) ;

__attribute__((used)) static void
set_multicast_list(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;


    if (lp->state == OPEN) {
 if (dev->flags & IFF_PROMISC) {
     u32 omr;
     omr = inl(DE4X5_OMR);
     omr |= OMR_PR;
     outl(omr, DE4X5_OMR);
 } else {
     SetMulticastFilter(dev);
     load_packet(dev, lp->setup_frame, TD_IC | PERFECT_F | TD_SET |
                                   SETUP_FRAME_LEN, (struct sk_buff *)1);

     lp->tx_new = (lp->tx_new + 1) % lp->txRingSize;
     outl(POLL_DEMAND, DE4X5_TPD);
     netif_trans_update(dev);
 }
    }
}

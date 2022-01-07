
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct sk_buff {int dummy; } ;
struct net_device {int base_addr; } ;
struct de4x5_private {int timeout; size_t tmp; size_t tx_new; int txRingSize; TYPE_1__* tx_ring; int frame; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int status; } ;


 int DE4X5_SISR ;
 int DE4X5_TPD ;
 int POLL_DEMAND ;
 int SISR_NCR ;
 int TD_ES ;
 int TD_FS ;
 int TD_LS ;
 int TIMER_CB ;
 int T_OWN ;
 int inl (int ) ;
 int le32_to_cpu (int ) ;
 int load_packet (struct net_device*,int ,int,struct sk_buff*) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int ,int ) ;

__attribute__((used)) static int
ping_media(struct net_device *dev, int msec)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int sisr;

    if (lp->timeout < 0) {
 lp->timeout = msec/100;

 lp->tmp = lp->tx_new;
 load_packet(dev, lp->frame, TD_LS | TD_FS | sizeof(lp->frame), (struct sk_buff *)1);
 lp->tx_new = (lp->tx_new + 1) % lp->txRingSize;
 outl(POLL_DEMAND, DE4X5_TPD);
    }

    sisr = inl(DE4X5_SISR);

    if ((!(sisr & SISR_NCR)) &&
 ((s32)le32_to_cpu(lp->tx_ring[lp->tmp].status) < 0) &&
  (--lp->timeout)) {
 sisr = 100 | TIMER_CB;
    } else {
 if ((!(sisr & SISR_NCR)) &&
     !(le32_to_cpu(lp->tx_ring[lp->tmp].status) & (T_OWN | TD_ES)) &&
     lp->timeout) {
     sisr = 0;
 } else {
     sisr = 1;
 }
 lp->timeout = -1;
    }

    return sisr;
}

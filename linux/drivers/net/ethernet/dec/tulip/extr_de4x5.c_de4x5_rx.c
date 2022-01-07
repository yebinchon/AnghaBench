
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct sk_buff {int data; int protocol; } ;
struct net_device {int name; int base_addr; } ;
struct TYPE_5__ {short rx_bytes; int rx_packets; int rx_dropped; int rx_length_errors; int rx_fifo_errors; int rx_crc_errors; int rx_frame_errors; int rx_errors; } ;
struct TYPE_4__ {int rx_overflow; int rx_dribble; int rx_collision; int rx_runt_frames; } ;
struct de4x5_private {int rx_new; int rx_old; int rxRingSize; TYPE_3__* rx_ring; TYPE_2__ stats; TYPE_1__ pktStats; int linkOK; scalar_t__ tx_enable; scalar_t__ rx_ovf; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {void* status; } ;


 int DE4X5_MFC ;
 int MFC_FOCM ;
 scalar_t__ RD_CE ;
 scalar_t__ RD_CS ;
 scalar_t__ RD_DB ;
 scalar_t__ RD_ES ;
 scalar_t__ RD_FS ;
 scalar_t__ RD_LS ;
 scalar_t__ RD_OF ;
 scalar_t__ RD_RF ;
 scalar_t__ RD_TL ;
 int R_OWN ;
 int barrier () ;
 void* cpu_to_le32 (int ) ;
 struct sk_buff* de4x5_alloc_rx_buff (struct net_device*,int,short) ;
 int de4x5_dbg_rx (struct sk_buff*,short) ;
 int de4x5_local_stats (struct net_device*,int ,short) ;
 int de4x5_rx_ovfc (struct net_device*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int inl (int ) ;
 int le32_to_cpu (void*) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,int ) ;

__attribute__((used)) static int
de4x5_rx(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int entry;
    s32 status;

    for (entry=lp->rx_new; (s32)le32_to_cpu(lp->rx_ring[entry].status)>=0;
                                                     entry=lp->rx_new) {
 status = (s32)le32_to_cpu(lp->rx_ring[entry].status);

 if (lp->rx_ovf) {
     if (inl(DE4X5_MFC) & MFC_FOCM) {
  de4x5_rx_ovfc(dev);
  break;
     }
 }

 if (status & RD_FS) {
     lp->rx_old = entry;
 }

 if (status & RD_LS) {
     if (lp->tx_enable) lp->linkOK++;
     if (status & RD_ES) {
  lp->stats.rx_errors++;
  if (status & (RD_RF | RD_TL)) lp->stats.rx_frame_errors++;
  if (status & RD_CE) lp->stats.rx_crc_errors++;
  if (status & RD_OF) lp->stats.rx_fifo_errors++;
  if (status & RD_TL) lp->stats.rx_length_errors++;
  if (status & RD_RF) lp->pktStats.rx_runt_frames++;
  if (status & RD_CS) lp->pktStats.rx_collision++;
  if (status & RD_DB) lp->pktStats.rx_dribble++;
  if (status & RD_OF) lp->pktStats.rx_overflow++;
     } else {
  struct sk_buff *skb;
  short pkt_len = (short)(le32_to_cpu(lp->rx_ring[entry].status)
                                 >> 16) - 4;

  if ((skb = de4x5_alloc_rx_buff(dev, entry, pkt_len)) == ((void*)0)) {
      printk("%s: Insufficient memory; nuking packet.\n",
                                               dev->name);
      lp->stats.rx_dropped++;
  } else {
      de4x5_dbg_rx(skb, pkt_len);


      skb->protocol=eth_type_trans(skb,dev);
      de4x5_local_stats(dev, skb->data, pkt_len);
      netif_rx(skb);


      lp->stats.rx_packets++;
       lp->stats.rx_bytes += pkt_len;
  }
     }


     for (;lp->rx_old!=entry;lp->rx_old=(lp->rx_old + 1)%lp->rxRingSize) {
  lp->rx_ring[lp->rx_old].status = cpu_to_le32(R_OWN);
  barrier();
     }
     lp->rx_ring[entry].status = cpu_to_le32(R_OWN);
     barrier();
 }




 lp->rx_new = (lp->rx_new + 1) % lp->rxRingSize;
    }

    return 0;
}

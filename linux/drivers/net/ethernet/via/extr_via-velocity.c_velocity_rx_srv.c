
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int curr; TYPE_2__* info; struct rx_desc* ring; } ;
struct TYPE_9__ {int numrx; } ;
struct velocity_info {TYPE_5__ rx; TYPE_4__ options; TYPE_1__* netdev; } ;
struct TYPE_8__ {int len; int RSR; } ;
struct rx_desc {int size; TYPE_3__ rdesc0; } ;
struct net_device_stats {int rx_dropped; int rx_frame_errors; int rx_crc_errors; } ;
struct TYPE_7__ {int skb; } ;
struct TYPE_6__ {struct net_device_stats stats; } ;


 int OWNED_BY_NIC ;
 int RSR_CE ;
 int RSR_CRC ;
 int RSR_FAE ;
 int RSR_RL ;
 int RSR_RXOK ;
 int RX_INTEN ;
 int VAR_USED (struct net_device_stats*) ;
 int rmb () ;
 int velocity_give_many_rx_descs (struct velocity_info*) ;
 scalar_t__ velocity_receive_frame (struct velocity_info*,int) ;
 scalar_t__ velocity_rx_refill (struct velocity_info*) ;

__attribute__((used)) static int velocity_rx_srv(struct velocity_info *vptr, int budget_left)
{
 struct net_device_stats *stats = &vptr->netdev->stats;
 int rd_curr = vptr->rx.curr;
 int works = 0;

 while (works < budget_left) {
  struct rx_desc *rd = vptr->rx.ring + rd_curr;

  if (!vptr->rx.info[rd_curr].skb)
   break;

  if (rd->rdesc0.len & OWNED_BY_NIC)
   break;

  rmb();




  if (rd->rdesc0.RSR & (RSR_RXOK | RSR_CE | RSR_RL)) {
   if (velocity_receive_frame(vptr, rd_curr) < 0)
    stats->rx_dropped++;
  } else {
   if (rd->rdesc0.RSR & RSR_CRC)
    stats->rx_crc_errors++;
   if (rd->rdesc0.RSR & RSR_FAE)
    stats->rx_frame_errors++;

   stats->rx_dropped++;
  }

  rd->size |= RX_INTEN;

  rd_curr++;
  if (rd_curr >= vptr->options.numrx)
   rd_curr = 0;
  works++;
 }

 vptr->rx.curr = rd_curr;

 if ((works > 0) && (velocity_rx_refill(vptr) > 0))
  velocity_give_many_rx_descs(vptr);

 VAR_USED(stats);
 return works;
}

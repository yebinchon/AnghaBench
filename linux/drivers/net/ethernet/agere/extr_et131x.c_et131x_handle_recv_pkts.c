
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rx_ring {scalar_t__ num_ready_recv; int unfinished_receives; int recv_list; } ;
struct rfd {scalar_t__ len; } ;
struct et131x_adapter {TYPE_4__* regs; TYPE_2__* pdev; TYPE_5__* netdev; int packet_filter; struct rx_ring rx_ring; } ;
struct TYPE_6__ {int rx_packets; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct TYPE_8__ {int watchdog_timer; } ;
struct TYPE_9__ {TYPE_3__ global; } ;
struct TYPE_7__ {int dev; } ;


 int MAX_PACKETS_HANDLED ;
 int NANO_IN_A_MICRO ;
 int PARM_TX_TIME_INT_DEF ;
 scalar_t__ RFD_LOW_WATER_MARK ;
 int WARN_ON (int) ;
 int dev_warn (int *,char*) ;
 scalar_t__ list_empty (int *) ;
 int netif_carrier_ok (TYPE_5__*) ;
 struct rfd* nic_rx_pkts (struct et131x_adapter*) ;
 int writel (int,int *) ;

__attribute__((used)) static int et131x_handle_recv_pkts(struct et131x_adapter *adapter, int budget)
{
 struct rfd *rfd = ((void*)0);
 int count = 0;
 int limit = budget;
 bool done = 1;
 struct rx_ring *rx_ring = &adapter->rx_ring;

 if (budget > MAX_PACKETS_HANDLED)
  limit = MAX_PACKETS_HANDLED;


 while (count < limit) {
  if (list_empty(&rx_ring->recv_list)) {
   WARN_ON(rx_ring->num_ready_recv != 0);
   done = 0;
   break;
  }

  rfd = nic_rx_pkts(adapter);

  if (rfd == ((void*)0))
   break;






  if (!adapter->packet_filter ||
      !netif_carrier_ok(adapter->netdev) ||
      rfd->len == 0)
   continue;

  adapter->netdev->stats.rx_packets++;

  if (rx_ring->num_ready_recv < RFD_LOW_WATER_MARK)
   dev_warn(&adapter->pdev->dev, "RFD's are running out\n");

  count++;
 }

 if (count == limit || !done) {
  rx_ring->unfinished_receives = 1;
  writel(PARM_TX_TIME_INT_DEF * NANO_IN_A_MICRO,
         &adapter->regs->global.watchdog_timer);
 } else {

  rx_ring->unfinished_receives = 0;
 }

 return count;
}

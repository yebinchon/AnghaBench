
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct atl1e_tpd_desc {int dummy; } ;
struct TYPE_4__ {int real_page_size; } ;
struct TYPE_3__ {int count; } ;
struct atl1e_adapter {int num_rx_queues; TYPE_2__ rx_ring; TYPE_1__ tx_ring; } ;


 int AT_PAGE_NUM_PER_QUEUE ;

__attribute__((used)) static void atl1e_cal_ring_size(struct atl1e_adapter *adapter, u32 *ring_size)
{
 *ring_size = ((u32)(adapter->tx_ring.count *
       sizeof(struct atl1e_tpd_desc) + 7

       + adapter->rx_ring.real_page_size * AT_PAGE_NUM_PER_QUEUE *
   adapter->num_rx_queues + 31

       + (1 + AT_PAGE_NUM_PER_QUEUE * adapter->num_rx_queues) *
   sizeof(u32) + 3));

}

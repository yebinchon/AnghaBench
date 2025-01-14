
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {scalar_t__ rx_bytes; } ;
struct hnae_ring {void* coal_last_jiffies; scalar_t__ coal_last_rx_bytes; int coal_rx_rate; TYPE_3__ stats; TYPE_2__* q; } ;
struct TYPE_5__ {TYPE_1__* handle; } ;
struct TYPE_4__ {int coal_adapt_en; } ;


 int HZ ;
 int do_div (int,int ) ;
 void* jiffies ;
 int jiffies_to_msecs (void*) ;
 scalar_t__ time_before (void*,void*) ;

__attribute__((used)) static void hns_update_rx_rate(struct hnae_ring *ring)
{
 bool coal_enable = ring->q->handle->coal_adapt_en;
 u32 time_passed_ms;
 u64 total_bytes;

 if (!coal_enable ||
     time_before(jiffies, ring->coal_last_jiffies + (HZ >> 4)))
  return;


 if (ring->coal_last_rx_bytes > ring->stats.rx_bytes) {
  ring->coal_last_rx_bytes = ring->stats.rx_bytes;
  ring->coal_last_jiffies = jiffies;
  return;
 }

 total_bytes = ring->stats.rx_bytes - ring->coal_last_rx_bytes;
 time_passed_ms = jiffies_to_msecs(jiffies - ring->coal_last_jiffies);
 do_div(total_bytes, time_passed_ms);
 ring->coal_rx_rate = total_bytes >> 10;

 ring->coal_last_rx_bytes = ring->stats.rx_bytes;
 ring->coal_last_jiffies = jiffies;
}

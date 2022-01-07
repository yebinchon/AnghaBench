
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count_max; int head; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
struct epbuf_handler {union ep_buffer_info* info; } ;


 int EP_RING_INDEX_INC (int ,int ) ;
 scalar_t__ fjes_hw_epbuf_rx_is_empty (struct epbuf_handler*) ;

void fjes_hw_epbuf_rx_curpkt_drop(struct epbuf_handler *epbh)
{
 union ep_buffer_info *info = epbh->info;

 if (fjes_hw_epbuf_rx_is_empty(epbh))
  return;

 EP_RING_INDEX_INC(epbh->info->v1i.head, info->v1i.count_max);
}

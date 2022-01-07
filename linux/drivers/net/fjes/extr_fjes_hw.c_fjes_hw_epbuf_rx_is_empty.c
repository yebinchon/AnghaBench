
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_status; scalar_t__ count_max; int tail; int head; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
struct epbuf_handler {union ep_buffer_info* info; } ;


 int EP_RING_EMPTY (int ,int ,scalar_t__) ;
 int FJES_RX_MTU_CHANGING_DONE ;

bool fjes_hw_epbuf_rx_is_empty(struct epbuf_handler *epbh)
{
 union ep_buffer_info *info = epbh->info;

 if (!(info->v1i.rx_status & FJES_RX_MTU_CHANGING_DONE))
  return 1;

 if (info->v1i.count_max == 0)
  return 1;

 return EP_RING_EMPTY(info->v1i.head, info->v1i.tail,
        info->v1i.count_max);
}

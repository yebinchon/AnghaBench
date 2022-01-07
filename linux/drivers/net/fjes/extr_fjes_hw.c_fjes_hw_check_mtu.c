
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ frame_max; int rx_status; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
typedef int u32 ;
struct epbuf_handler {union ep_buffer_info* info; } ;


 scalar_t__ FJES_MTU_TO_FRAME_SIZE (int ) ;
 int FJES_RX_MTU_CHANGING_DONE ;

bool fjes_hw_check_mtu(struct epbuf_handler *epbh, u32 mtu)
{
 union ep_buffer_info *info = epbh->info;

 return ((info->v1i.frame_max == FJES_MTU_TO_FRAME_SIZE(mtu)) &&
  info->v1i.rx_status & FJES_RX_MTU_CHANGING_DONE);
}

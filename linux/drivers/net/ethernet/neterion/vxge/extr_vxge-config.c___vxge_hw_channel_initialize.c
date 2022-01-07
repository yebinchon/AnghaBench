
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct __vxge_hw_virtualpath {struct __vxge_hw_ring* ringh; struct __vxge_hw_fifo* fifoh; } ;
struct __vxge_hw_ring {TYPE_3__* stats; } ;
struct __vxge_hw_fifo {TYPE_2__* stats; } ;
struct __vxge_hw_channel {size_t length; int type; int * stats; int * reserve_arr; int * orig_arr; TYPE_1__* vph; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_6__ {int common_stats; } ;
struct TYPE_5__ {int common_stats; } ;
struct TYPE_4__ {struct __vxge_hw_virtualpath* vpath; } ;




 int VXGE_HW_OK ;

__attribute__((used)) static enum vxge_hw_status
__vxge_hw_channel_initialize(struct __vxge_hw_channel *channel)
{
 u32 i;
 struct __vxge_hw_virtualpath *vpath;

 vpath = channel->vph->vpath;

 if ((channel->reserve_arr != ((void*)0)) && (channel->orig_arr != ((void*)0))) {
  for (i = 0; i < channel->length; i++)
   channel->orig_arr[i] = channel->reserve_arr[i];
 }

 switch (channel->type) {
 case 129:
  vpath->fifoh = (struct __vxge_hw_fifo *)channel;
  channel->stats = &((struct __vxge_hw_fifo *)
    channel)->stats->common_stats;
  break;
 case 128:
  vpath->ringh = (struct __vxge_hw_ring *)channel;
  channel->stats = &((struct __vxge_hw_ring *)
    channel)->stats->common_stats;
  break;
 default:
  break;
 }

 return VXGE_HW_OK;
}

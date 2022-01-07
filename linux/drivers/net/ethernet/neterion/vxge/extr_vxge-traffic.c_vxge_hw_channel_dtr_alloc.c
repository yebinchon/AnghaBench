
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __vxge_hw_channel {size_t reserve_ptr; scalar_t__ reserve_top; scalar_t__ length; scalar_t__ free_ptr; TYPE_1__* stats; int free_arr; void** reserve_arr; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_2__ {int full_cnt; int reserve_free_swaps_cnt; } ;


 int VXGE_HW_INF_OUT_OF_DESCRIPTORS ;
 int VXGE_HW_OK ;
 int swap (void**,int ) ;

__attribute__((used)) static enum vxge_hw_status
vxge_hw_channel_dtr_alloc(struct __vxge_hw_channel *channel, void **dtrh)
{
 if (channel->reserve_ptr - channel->reserve_top > 0) {
_alloc_after_swap:
  *dtrh = channel->reserve_arr[--channel->reserve_ptr];

  return VXGE_HW_OK;
 }







 if (channel->length - channel->free_ptr > 0) {
  swap(channel->reserve_arr, channel->free_arr);
  channel->reserve_ptr = channel->length;
  channel->reserve_top = channel->free_ptr;
  channel->free_ptr = channel->length;

  channel->stats->reserve_free_swaps_cnt++;

  goto _alloc_after_swap;
 }

 channel->stats->full_cnt++;

 *dtrh = ((void*)0);
 return VXGE_HW_INF_OUT_OF_DESCRIPTORS;
}

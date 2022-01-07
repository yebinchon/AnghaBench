
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_channel {size_t free_ptr; void** free_arr; } ;



void vxge_hw_channel_dtr_free(struct __vxge_hw_channel *channel, void *dtrh)
{
 channel->free_arr[--channel->free_ptr] = dtrh;
}

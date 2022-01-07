
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_channel {size_t compl_index; size_t length; void** work_arr; } ;


 int prefetch (void*) ;
 int vxge_assert (int) ;

void
vxge_hw_channel_dtr_try_complete(struct __vxge_hw_channel *channel, void **dtrh)
{
 vxge_assert(channel->compl_index < channel->length);

 *dtrh = channel->work_arr[channel->compl_index];
 prefetch(*dtrh);
}

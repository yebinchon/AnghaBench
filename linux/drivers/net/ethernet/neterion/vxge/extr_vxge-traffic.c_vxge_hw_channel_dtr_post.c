
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_channel {size_t post_index; size_t length; int ** work_arr; } ;


 int vxge_assert (int ) ;

__attribute__((used)) static void
vxge_hw_channel_dtr_post(struct __vxge_hw_channel *channel, void *dtrh)
{
 vxge_assert(channel->work_arr[channel->post_index] == ((void*)0));

 channel->work_arr[channel->post_index++] = dtrh;


 if (channel->post_index == channel->length)
  channel->post_index = 0;
}

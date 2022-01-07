
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_channel {struct __vxge_hw_channel* orig_arr; struct __vxge_hw_channel* reserve_arr; struct __vxge_hw_channel* free_arr; struct __vxge_hw_channel* work_arr; } ;


 int kfree (struct __vxge_hw_channel*) ;

__attribute__((used)) static void __vxge_hw_channel_free(struct __vxge_hw_channel *channel)
{
 kfree(channel->work_arr);
 kfree(channel->free_arr);
 kfree(channel->reserve_arr);
 kfree(channel->orig_arr);
 kfree(channel);
}

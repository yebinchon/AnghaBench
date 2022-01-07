
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_channel {int reserve_ptr; int reserve_top; int length; int free_ptr; } ;



int vxge_hw_channel_dtr_count(struct __vxge_hw_channel *channel)
{
 return (channel->reserve_ptr - channel->reserve_top) +
  (channel->length - channel->free_ptr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {struct hv_device* device_obj; struct vmbus_channel* primary_channel; } ;
struct hv_device {int dummy; } ;



__attribute__((used)) static struct hv_device *netvsc_channel_to_device(struct vmbus_channel *channel)
{
 struct vmbus_channel *primary = channel->primary_channel;

 return primary ? primary->device_obj : channel->device_obj;
}

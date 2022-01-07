
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vmbus_channel {int outbound; int inbound; } ;
struct netvsc_device {int num_chn; TYPE_1__* chan_table; } ;
struct TYPE_2__ {int napi; struct vmbus_channel* channel; } ;


 int ETIMEDOUT ;
 unsigned int RETRY_MAX ;
 int RETRY_US_HI ;
 int RETRY_US_LO ;
 scalar_t__ hv_get_bytes_to_read (int *) ;
 int napi_synchronize (int *) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int netvsc_wait_until_empty(struct netvsc_device *nvdev)
{
 unsigned int retry = 0;
 int i;


 for (;;) {
  u32 aread = 0;

  for (i = 0; i < nvdev->num_chn; i++) {
   struct vmbus_channel *chn
    = nvdev->chan_table[i].channel;

   if (!chn)
    continue;


   napi_synchronize(&nvdev->chan_table[i].napi);

   aread = hv_get_bytes_to_read(&chn->inbound);
   if (aread)
    break;

   aread = hv_get_bytes_to_read(&chn->outbound);
   if (aread)
    break;
  }

  if (aread == 0)
   return 0;

  if (++retry > RETRY_MAX)
   return -ETIMEDOUT;

  usleep_range(RETRY_US_LO, RETRY_US_HI);
 }
}

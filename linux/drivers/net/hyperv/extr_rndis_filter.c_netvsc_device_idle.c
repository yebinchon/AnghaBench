
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netvsc_device {int num_chn; struct netvsc_channel* chan_table; } ;
struct TYPE_2__ {scalar_t__ first; scalar_t__ next; } ;
struct netvsc_channel {int queue_sends; TYPE_1__ mrc; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool netvsc_device_idle(const struct netvsc_device *nvdev)
{
 int i;

 for (i = 0; i < nvdev->num_chn; i++) {
  const struct netvsc_channel *nvchan = &nvdev->chan_table[i];

  if (nvchan->mrc.first != nvchan->mrc.next)
   return 0;

  if (atomic_read(&nvchan->queue_sends) > 0)
   return 0;
 }

 return 1;
}

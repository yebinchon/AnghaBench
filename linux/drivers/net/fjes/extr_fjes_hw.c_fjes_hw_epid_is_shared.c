
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fjes_device_shared_info {int epnum; int* ep_status; } ;



int fjes_hw_epid_is_shared(struct fjes_device_shared_info *share,
      int dest_epid)
{
 int value = 0;

 if (dest_epid < share->epnum)
  value = share->ep_status[dest_epid];

 return value;
}

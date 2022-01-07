
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int extension; } ;


 int EINVAL ;
 int rndis_filter_close_device (int ) ;

int rndis_filter_close(struct netvsc_device *nvdev)
{
 if (!nvdev)
  return -EINVAL;

 return rndis_filter_close_device(nvdev->extension);
}

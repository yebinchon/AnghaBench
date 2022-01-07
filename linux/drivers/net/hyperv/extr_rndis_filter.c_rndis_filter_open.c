
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int extension; } ;


 int EINVAL ;
 int rndis_filter_open_device (int ) ;

int rndis_filter_open(struct netvsc_device *nvdev)
{
 if (!nvdev)
  return -EINVAL;

 return rndis_filter_open_device(nvdev->extension);
}

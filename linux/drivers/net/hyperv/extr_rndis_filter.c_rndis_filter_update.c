
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_device {int mcast_work; } ;
struct netvsc_device {struct rndis_device* extension; } ;


 int schedule_work (int *) ;

void rndis_filter_update(struct netvsc_device *nvdev)
{
 struct rndis_device *rdev = nvdev->extension;

 schedule_work(&rdev->mcast_work);
}

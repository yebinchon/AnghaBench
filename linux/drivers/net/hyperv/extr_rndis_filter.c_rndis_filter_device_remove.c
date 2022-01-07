
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_device {int dummy; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct hv_device {int dummy; } ;


 int netvsc_device_remove (struct hv_device*) ;
 int rndis_filter_halt_device (struct netvsc_device*,struct rndis_device*) ;

void rndis_filter_device_remove(struct hv_device *dev,
    struct netvsc_device *net_dev)
{
 struct rndis_device *rndis_dev = net_dev->extension;


 rndis_filter_halt_device(net_dev, rndis_dev);

 net_dev->extension = ((void*)0);

 netvsc_device_remove(dev);
}

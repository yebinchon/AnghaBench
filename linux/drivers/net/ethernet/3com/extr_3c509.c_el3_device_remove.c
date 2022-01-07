
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int el3_common_remove (struct net_device*) ;

__attribute__((used)) static int el3_device_remove(struct device *device)
{
 struct net_device *dev;

 dev = dev_get_drvdata(device);

 el3_common_remove (dev);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dio_dev {int dummy; } ;


 struct net_device* dio_get_drvdata (struct dio_dev*) ;
 int dio_resource_len (struct dio_dev*) ;
 int dio_resource_start (struct dio_dev*) ;
 int free_netdev (struct net_device*) ;
 int release_mem_region (int ,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void hplance_remove_one(struct dio_dev *d)
{
 struct net_device *dev = dio_get_drvdata(d);

 unregister_netdev(dev);
 release_mem_region(dio_resource_start(d), dio_resource_len(d));
 free_netdev(dev);
}

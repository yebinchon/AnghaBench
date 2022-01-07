
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {int dummy; } ;
struct device {int dummy; } ;


 struct maple_device* to_maple_dev (struct device*) ;
 int vmu_disconnect (struct maple_device*) ;

__attribute__((used)) static int remove_maple_vmu(struct device *dev)
{
 struct maple_device *mdev = to_maple_dev(dev);

 vmu_disconnect(mdev);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int dummy; } ;
struct notifier_block {int dummy; } ;


 int UBI_MAX_DEVICES ;
 int UBI_VOLUME_ADDED ;
 struct ubi_device** ubi_devices ;
 scalar_t__ ubi_notify_all (struct ubi_device*,int ,struct notifier_block*) ;

int ubi_enumerate_volumes(struct notifier_block *nb)
{
 int i, count = 0;





 for (i = 0; i < UBI_MAX_DEVICES; i++) {
  struct ubi_device *ubi = ubi_devices[i];

  if (!ubi)
   continue;
  count += ubi_notify_all(ubi, UBI_VOLUME_ADDED, nb);
 }

 return count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubi_devices_mutex ;
 int ubi_enumerate_volumes (struct notifier_block*) ;
 int ubi_notifiers ;

int ubi_register_volume_notifier(struct notifier_block *nb,
     int ignore_existing)
{
 int err;

 err = blocking_notifier_chain_register(&ubi_notifiers, nb);
 if (err != 0)
  return err;
 if (ignore_existing)
  return 0;







 mutex_lock(&ubi_devices_mutex);
 ubi_enumerate_volumes(nb);
 mutex_unlock(&ubi_devices_mutex);

 return err;
}

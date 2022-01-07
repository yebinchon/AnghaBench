
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct memory_notify {int nr_pages; int start_pfn; } ;





 int NOTIFY_BAD ;
 int NOTIFY_OK ;
 int __EHEA_STOP_XFER ;
 int dlpar_mem_lock ;
 int ehea_add_sect_bmap (int ,int ) ;
 int ehea_driver_flags ;
 int ehea_rem_sect_bmap (int ,int ) ;
 int ehea_rereg_mrs () ;
 int ehea_update_firmware_handles () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ehea_mem_notifier(struct notifier_block *nb,
        unsigned long action, void *data)
{
 int ret = NOTIFY_BAD;
 struct memory_notify *arg = data;

 mutex_lock(&dlpar_mem_lock);

 switch (action) {
 case 130:
  pr_info("memory offlining canceled");


 case 128:
  pr_info("memory is going online");
  set_bit(__EHEA_STOP_XFER, &ehea_driver_flags);
  if (ehea_add_sect_bmap(arg->start_pfn, arg->nr_pages))
   goto out_unlock;
  ehea_rereg_mrs();
  break;

 case 129:
  pr_info("memory is going offline");
  set_bit(__EHEA_STOP_XFER, &ehea_driver_flags);
  if (ehea_rem_sect_bmap(arg->start_pfn, arg->nr_pages))
   goto out_unlock;
  ehea_rereg_mrs();
  break;

 default:
  break;
 }

 ehea_update_firmware_handles();
 ret = NOTIFY_OK;

out_unlock:
 mutex_unlock(&dlpar_mem_lock);
 return ret;
}

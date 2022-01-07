
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int NOTIFY_DONE ;
 int bcm_sysport_map_queues (struct notifier_block*,void*) ;
 int bcm_sysport_unmap_queues (struct notifier_block*,void*) ;
 int notifier_from_errno (int) ;

__attribute__((used)) static int bcm_sysport_dsa_notifier(struct notifier_block *nb,
        unsigned long event, void *ptr)
{
 int ret = NOTIFY_DONE;

 switch (event) {
 case 129:
  ret = bcm_sysport_map_queues(nb, ptr);
  break;
 case 128:
  ret = bcm_sysport_unmap_queues(nb, ptr);
  break;
 }

 return notifier_from_errno(ret);
}

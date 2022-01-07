
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int device; } ;
struct firedtv {int list; } ;


 struct firedtv* dev_get_drvdata (int *) ;
 int fdtv_dvb_unregister (struct firedtv*) ;
 int fdtv_unregister_rc (struct firedtv*) ;
 int kfree (struct firedtv*) ;
 int list_del (int *) ;
 int node_list_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void node_remove(struct fw_unit *unit)
{
 struct firedtv *fdtv = dev_get_drvdata(&unit->device);

 fdtv_dvb_unregister(fdtv);

 spin_lock_irq(&node_list_lock);
 list_del(&fdtv->list);
 spin_unlock_irq(&node_list_lock);

 fdtv_unregister_rc(fdtv);

 kfree(fdtv);
}

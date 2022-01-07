
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_drv {TYPE_2__* trans; int dbgfs_drv; int list; int request_firmware_complete; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* debugfs_cleanup ) (TYPE_2__*) ;} ;


 int _iwl_op_mode_stop (struct iwl_drv*) ;
 int debugfs_remove_recursive (int ) ;
 int iwl_dbg_tlv_free (TYPE_2__*) ;
 int iwl_dealloc_ucode (struct iwl_drv*) ;
 int iwlwifi_opmode_table_mtx ;
 int kfree (struct iwl_drv*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*) ;
 int wait_for_completion (int *) ;

void iwl_drv_stop(struct iwl_drv *drv)
{
 wait_for_completion(&drv->request_firmware_complete);

 _iwl_op_mode_stop(drv);

 iwl_dealloc_ucode(drv);

 mutex_lock(&iwlwifi_opmode_table_mtx);





 if (!list_empty(&drv->list))
  list_del(&drv->list);
 mutex_unlock(&iwlwifi_opmode_table_mtx);







 iwl_dbg_tlv_free(drv->trans);

 kfree(drv);
}

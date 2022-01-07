
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int (* start_cm ) (struct cnic_dev*) ;int * ulp_ops; struct cnic_dev** ulp_handle; int delete_task; } ;
struct cnic_dev {int cm_select_dev; int cm_close; int cm_abort; int cm_connect; int cm_destroy; int cm_create; struct cnic_local* cnic_priv; } ;


 size_t CNIC_ULP_L4 ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int cm_ulp_ops ;
 int cnic_cm_abort ;
 int cnic_cm_alloc_mem (struct cnic_dev*) ;
 int cnic_cm_close ;
 int cnic_cm_connect ;
 int cnic_cm_create ;
 int cnic_cm_destroy ;
 int cnic_cm_free_mem (struct cnic_dev*) ;
 int cnic_cm_select_dev ;
 int cnic_delete_task ;
 int rcu_assign_pointer (int ,int *) ;
 int stub1 (struct cnic_dev*) ;

__attribute__((used)) static int cnic_cm_open(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 int err;

 err = cnic_cm_alloc_mem(dev);
 if (err)
  return err;

 err = cp->start_cm(dev);

 if (err)
  goto err_out;

 INIT_DELAYED_WORK(&cp->delete_task, cnic_delete_task);

 dev->cm_create = cnic_cm_create;
 dev->cm_destroy = cnic_cm_destroy;
 dev->cm_connect = cnic_cm_connect;
 dev->cm_abort = cnic_cm_abort;
 dev->cm_close = cnic_cm_close;
 dev->cm_select_dev = cnic_cm_select_dev;

 cp->ulp_handle[CNIC_ULP_L4] = dev;
 rcu_assign_pointer(cp->ulp_ops[CNIC_ULP_L4], &cm_ulp_ops);
 return 0;

err_out:
 cnic_cm_free_mem(dev);
 return err;
}

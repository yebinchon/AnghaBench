
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {void* dbgfs_dir; int dev; } ;
struct iwl_drv {struct iwl_trans* trans; void* dbgfs_drv; int list; int request_firmware_complete; int dev; } ;


 int ENOMEM ;
 struct iwl_drv* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 void* debugfs_create_dir (char*,void*) ;
 int debugfs_remove_recursive (void*) ;
 char* dev_name (int ) ;
 int init_completion (int *) ;
 int iwl_dbg_tlv_free (struct iwl_trans*) ;
 int iwl_dbg_tlv_load_bin (int ,struct iwl_trans*) ;
 void* iwl_dbgfs_root ;
 int iwl_request_firmware (struct iwl_drv*,int) ;
 int kfree (struct iwl_drv*) ;
 struct iwl_drv* kzalloc (int,int ) ;

struct iwl_drv *iwl_drv_start(struct iwl_trans *trans)
{
 struct iwl_drv *drv;
 int ret;

 drv = kzalloc(sizeof(*drv), GFP_KERNEL);
 if (!drv) {
  ret = -ENOMEM;
  goto err;
 }

 drv->trans = trans;
 drv->dev = trans->dev;

 init_completion(&drv->request_firmware_complete);
 INIT_LIST_HEAD(&drv->list);

 iwl_dbg_tlv_load_bin(drv->trans->dev, drv->trans);
 ret = iwl_request_firmware(drv, 1);
 if (ret) {
  IWL_ERR(trans, "Couldn't request the fw\n");
  goto err_fw;
 }

 return drv;

err_fw:




 kfree(drv);
err:
 return ERR_PTR(ret);
}

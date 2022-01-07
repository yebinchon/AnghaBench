
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xgbe_prv_data {int debugfs_xpcs_mmd; int debugfs_an_cdr_track_early; int xgbe_debugfs; int debugfs_an_cdr_workaround; TYPE_2__* vdata; scalar_t__ xi2c_regs; scalar_t__ xprop_regs; TYPE_1__* netdev; scalar_t__ debugfs_xpcs_reg; scalar_t__ debugfs_xgmac_reg; } ;
struct TYPE_4__ {scalar_t__ an_cdr_workaround; } ;
struct TYPE_3__ {int name; } ;


 int GFP_KERNEL ;
 int debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,struct xgbe_prv_data*,int *) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int xgmac_reg_addr_fops ;
 int xgmac_reg_value_fops ;
 int xi2c_reg_addr_fops ;
 int xi2c_reg_value_fops ;
 int xpcs_mmd_fops ;
 int xpcs_reg_addr_fops ;
 int xpcs_reg_value_fops ;
 int xprop_reg_addr_fops ;
 int xprop_reg_value_fops ;

void xgbe_debugfs_init(struct xgbe_prv_data *pdata)
{
 char *buf;


 pdata->debugfs_xgmac_reg = 0;
 pdata->debugfs_xpcs_mmd = 1;
 pdata->debugfs_xpcs_reg = 0;

 buf = kasprintf(GFP_KERNEL, "amd-xgbe-%s", pdata->netdev->name);
 if (!buf)
  return;

 pdata->xgbe_debugfs = debugfs_create_dir(buf, ((void*)0));

 debugfs_create_file("xgmac_register", 0600, pdata->xgbe_debugfs, pdata,
       &xgmac_reg_addr_fops);

 debugfs_create_file("xgmac_register_value", 0600, pdata->xgbe_debugfs,
       pdata, &xgmac_reg_value_fops);

 debugfs_create_file("xpcs_mmd", 0600, pdata->xgbe_debugfs, pdata,
       &xpcs_mmd_fops);

 debugfs_create_file("xpcs_register", 0600, pdata->xgbe_debugfs, pdata,
       &xpcs_reg_addr_fops);

 debugfs_create_file("xpcs_register_value", 0600, pdata->xgbe_debugfs,
       pdata, &xpcs_reg_value_fops);

 if (pdata->xprop_regs) {
  debugfs_create_file("xprop_register", 0600, pdata->xgbe_debugfs,
        pdata, &xprop_reg_addr_fops);

  debugfs_create_file("xprop_register_value", 0600,
        pdata->xgbe_debugfs, pdata,
        &xprop_reg_value_fops);
 }

 if (pdata->xi2c_regs) {
  debugfs_create_file("xi2c_register", 0600, pdata->xgbe_debugfs,
        pdata, &xi2c_reg_addr_fops);

  debugfs_create_file("xi2c_register_value", 0600,
        pdata->xgbe_debugfs, pdata,
        &xi2c_reg_value_fops);
 }

 if (pdata->vdata->an_cdr_workaround) {
  debugfs_create_bool("an_cdr_workaround", 0600,
        pdata->xgbe_debugfs,
        &pdata->debugfs_an_cdr_workaround);

  debugfs_create_bool("an_cdr_track_early", 0600,
        pdata->xgbe_debugfs,
        &pdata->debugfs_an_cdr_track_early);
 }

 kfree(buf);
}

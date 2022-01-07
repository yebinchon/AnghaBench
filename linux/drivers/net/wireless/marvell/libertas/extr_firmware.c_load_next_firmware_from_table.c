
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {scalar_t__ fw_model; struct lbs_fw_table const* fw_iter; int * helper_fw; struct lbs_fw_table const* fw_table; } ;
typedef struct lbs_fw_table {scalar_t__ model; int helper; } const lbs_fw_table ;


 int ENOENT ;
 int do_load_firmware (struct lbs_private*,int ,int ) ;
 int helper_firmware_cb ;
 int lbs_fw_loaded (struct lbs_private*,int ,int *,int *) ;
 int release_firmware (int *) ;

__attribute__((used)) static void load_next_firmware_from_table(struct lbs_private *priv)
{
 const struct lbs_fw_table *iter;

 if (!priv->fw_iter)
  iter = priv->fw_table;
 else
  iter = ++priv->fw_iter;

 if (priv->helper_fw) {
  release_firmware(priv->helper_fw);
  priv->helper_fw = ((void*)0);
 }

next:
 if (!iter->helper) {

  lbs_fw_loaded(priv, -ENOENT, ((void*)0), ((void*)0));
  return;
 }

 if (iter->model != priv->fw_model) {
  iter++;
  goto next;
 }

 priv->fw_iter = iter;
 do_load_firmware(priv, iter->helper, helper_firmware_cb);
}

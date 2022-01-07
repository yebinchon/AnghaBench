
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_priv {int cur_ucode; int ucode_loaded; int notif_wait; int trans; int fw; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_alive_data {int valid; } ;
struct fw_img {int dummy; } ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int EIO ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int IWL_UCODE_WOWLAN ;
 int IWL_WARN (struct iwl_priv*,char*,int) ;

 int UCODE_ALIVE_TIMEOUT ;
 scalar_t__ WARN_ON (int) ;
 int iwl_alive_fn ;
 int iwl_alive_notify (struct iwl_priv*) ;
 struct fw_img* iwl_get_ucode_image (int ,int) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int ,struct iwl_alive_data*) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_trans_start_fw (int ,struct fw_img const*,int) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int ) ;
 int msleep (int) ;

int iwl_load_ucode_wait_alive(struct iwl_priv *priv,
     enum iwl_ucode_type ucode_type)
{
 struct iwl_notification_wait alive_wait;
 struct iwl_alive_data alive_data;
 const struct fw_img *fw;
 int ret;
 enum iwl_ucode_type old_type;
 static const u16 alive_cmd[] = { 128 };

 fw = iwl_get_ucode_image(priv->fw, ucode_type);
 if (WARN_ON(!fw))
  return -EINVAL;

 old_type = priv->cur_ucode;
 priv->cur_ucode = ucode_type;
 priv->ucode_loaded = 0;

 iwl_init_notification_wait(&priv->notif_wait, &alive_wait,
       alive_cmd, ARRAY_SIZE(alive_cmd),
       iwl_alive_fn, &alive_data);

 ret = iwl_trans_start_fw(priv->trans, fw, 0);
 if (ret) {
  priv->cur_ucode = old_type;
  iwl_remove_notification(&priv->notif_wait, &alive_wait);
  return ret;
 }





 ret = iwl_wait_notification(&priv->notif_wait, &alive_wait,
     UCODE_ALIVE_TIMEOUT);
 if (ret) {
  priv->cur_ucode = old_type;
  return ret;
 }

 if (!alive_data.valid) {
  IWL_ERR(priv, "Loaded ucode is not valid!\n");
  priv->cur_ucode = old_type;
  return -EIO;
 }

 priv->ucode_loaded = 1;

 if (ucode_type != IWL_UCODE_WOWLAN) {

  msleep(5);
 }

 ret = iwl_alive_notify(priv);
 if (ret) {
  IWL_WARN(priv,
   "Could not complete ALIVE transition: %d\n", ret);
  priv->cur_ucode = old_type;
  return ret;
 }

 return 0;
}

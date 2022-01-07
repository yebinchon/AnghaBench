
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iwl_priv {int ucode_loaded; int trans; int notif_wait; TYPE_2__* fw; int mutex; } ;
struct iwl_notification_wait {int dummy; } ;
struct TYPE_4__ {TYPE_1__* img; } ;
struct TYPE_3__ {int num_sec; } ;


 int ARRAY_SIZE (int const*) ;


 size_t IWL_UCODE_INIT ;
 int UCODE_CALIB_TIMEOUT ;
 int iwl_init_alive_start (struct iwl_priv*) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int ,struct iwl_priv*) ;
 int iwl_load_ucode_wait_alive (struct iwl_priv*,size_t) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_trans_stop_device (int ) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int ) ;
 int iwlagn_wait_calib ;
 int lockdep_assert_held (int *) ;

int iwl_run_init_ucode(struct iwl_priv *priv)
{
 struct iwl_notification_wait calib_wait;
 static const u16 calib_complete[] = {
  128,
  129
 };
 int ret;

 lockdep_assert_held(&priv->mutex);


 if (!priv->fw->img[IWL_UCODE_INIT].num_sec)
  return 0;

 iwl_init_notification_wait(&priv->notif_wait, &calib_wait,
       calib_complete, ARRAY_SIZE(calib_complete),
       iwlagn_wait_calib, priv);


 ret = iwl_load_ucode_wait_alive(priv, IWL_UCODE_INIT);
 if (ret)
  goto error;

 ret = iwl_init_alive_start(priv);
 if (ret)
  goto error;





 ret = iwl_wait_notification(&priv->notif_wait, &calib_wait,
     UCODE_CALIB_TIMEOUT);

 goto out;

 error:
 iwl_remove_notification(&priv->notif_wait, &calib_wait);
 out:

 iwl_trans_stop_device(priv->trans);
 priv->ucode_loaded = 0;

 return ret;
}

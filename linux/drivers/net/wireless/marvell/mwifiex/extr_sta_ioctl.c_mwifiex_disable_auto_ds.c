
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_auto_ds {int auto_ds; } ;


 int BITMAP_AUTO_DS ;
 int DEEP_SLEEP_OFF ;
 int DIS_AUTO_PS ;
 int HostCmd_CMD_802_11_PS_MODE_ENH ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_auto_ds*,int) ;

int mwifiex_disable_auto_ds(struct mwifiex_private *priv)
{
 struct mwifiex_ds_auto_ds auto_ds = {
  .auto_ds = DEEP_SLEEP_OFF,
 };

 return mwifiex_send_cmd(priv, HostCmd_CMD_802_11_PS_MODE_ENH,
    DIS_AUTO_PS, BITMAP_AUTO_DS, &auto_ds, 1);
}

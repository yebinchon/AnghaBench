
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int ps_mode; } ;


 int BITMAP_STA_PS ;
 scalar_t__ DIS_AUTO_PS ;
 scalar_t__ EN_AUTO_PS ;
 scalar_t__ GET_PS ;
 int HostCmd_CMD_802_11_PS_MODE_ENH ;
 int MWIFIEX_802_11_POWER_MODE_CAM ;
 int MWIFIEX_802_11_POWER_MODE_PSP ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,scalar_t__,int ,int *,int) ;

int mwifiex_drv_set_power(struct mwifiex_private *priv, u32 *ps_mode)
{
 int ret;
 struct mwifiex_adapter *adapter = priv->adapter;
 u16 sub_cmd;

 if (*ps_mode)
  adapter->ps_mode = MWIFIEX_802_11_POWER_MODE_PSP;
 else
  adapter->ps_mode = MWIFIEX_802_11_POWER_MODE_CAM;
 sub_cmd = (*ps_mode) ? EN_AUTO_PS : DIS_AUTO_PS;
 ret = mwifiex_send_cmd(priv, HostCmd_CMD_802_11_PS_MODE_ENH,
          sub_cmd, BITMAP_STA_PS, ((void*)0), 1);
 if ((!ret) && (sub_cmd == DIS_AUTO_PS))
  ret = mwifiex_send_cmd(priv, HostCmd_CMD_802_11_PS_MODE_ENH,
           GET_PS, 0, ((void*)0), 0);

 return ret;
}

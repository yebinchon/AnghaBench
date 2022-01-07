
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipw_sensitivity_calib {int beacon_rssi_raw; } ;
struct ipw_priv {int dummy; } ;
typedef int calib ;


 int IPW_CMD_SENSITIVITY_CALIB ;
 int cpu_to_le16 (int ) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_sensitivity_calib*) ;

__attribute__((used)) static int ipw_set_sensitivity(struct ipw_priv *priv, u16 sens)
{
 struct ipw_sensitivity_calib calib = {
  .beacon_rssi_raw = cpu_to_le16(sens),
 };

 return ipw_send_cmd_pdu(priv, IPW_CMD_SENSITIVITY_CALIB, sizeof(calib),
    &calib);
}

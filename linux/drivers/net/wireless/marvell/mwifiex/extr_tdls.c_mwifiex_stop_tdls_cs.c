
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_tdls_stop_cs_params {int peer_mac; } ;
struct mwifiex_private {int dummy; } ;


 int ACT_TDLS_CS_STOP ;
 int HostCmd_CMD_TDLS_CONFIG ;
 int ether_addr_copy (int ,int const*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_tdls_stop_cs_params*,int) ;

int mwifiex_stop_tdls_cs(struct mwifiex_private *priv, const u8 *peer_mac)
{
 struct mwifiex_tdls_stop_cs_params stop_tdls_cs_params;

 ether_addr_copy(stop_tdls_cs_params.peer_mac, peer_mac);

 return mwifiex_send_cmd(priv, HostCmd_CMD_TDLS_CONFIG,
    ACT_TDLS_CS_STOP, 0,
    &stop_tdls_cs_params, 1);
}

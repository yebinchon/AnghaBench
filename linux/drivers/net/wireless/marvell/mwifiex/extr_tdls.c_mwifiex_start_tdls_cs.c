
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct mwifiex_tdls_init_cs_params {int periodicity; int reg_class; void* switch_timeout; void* switch_time; void* band; void* second_chan_offset; void* primary_chan; int peer_mac; } ;
struct mwifiex_private {int dummy; } ;


 int ACT_TDLS_CS_INIT ;
 int HostCmd_CMD_TDLS_CONFIG ;
 int MWIFIEX_DEF_CS_PERIODICITY ;
 int MWIFIEX_DEF_CS_REG_CLASS ;
 int MWIFIEX_DEF_CS_TIME ;
 int MWIFIEX_DEF_CS_TIMEOUT ;
 void* cpu_to_le16 (int ) ;
 int ether_addr_copy (int ,void* const*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_tdls_init_cs_params*,int) ;

int mwifiex_start_tdls_cs(struct mwifiex_private *priv, const u8 *peer_mac,
     u8 primary_chan, u8 second_chan_offset, u8 band)
{
 struct mwifiex_tdls_init_cs_params start_tdls_cs_params;

 ether_addr_copy(start_tdls_cs_params.peer_mac, peer_mac);
 start_tdls_cs_params.primary_chan = primary_chan;
 start_tdls_cs_params.second_chan_offset = second_chan_offset;
 start_tdls_cs_params.band = band;

 start_tdls_cs_params.switch_time = cpu_to_le16(MWIFIEX_DEF_CS_TIME);
 start_tdls_cs_params.switch_timeout =
     cpu_to_le16(MWIFIEX_DEF_CS_TIMEOUT);
 start_tdls_cs_params.reg_class = MWIFIEX_DEF_CS_REG_CLASS;
 start_tdls_cs_params.periodicity = MWIFIEX_DEF_CS_PERIODICITY;

 return mwifiex_send_cmd(priv, HostCmd_CMD_TDLS_CONFIG,
    ACT_TDLS_CS_INIT, 0,
    &start_tdls_cs_params, 1);
}

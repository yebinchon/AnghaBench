
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_tdls_config_cs_params {int thr_directlink; int thr_otherlink; int unit_time; } ;
struct mwifiex_private {int dummy; } ;


 int ACT_TDLS_CS_PARAMS ;
 int HostCmd_CMD_TDLS_CONFIG ;
 int MWIFIEX_DEF_CS_THR_OTHERLINK ;
 int MWIFIEX_DEF_CS_UNIT_TIME ;
 int MWIFIEX_DEF_THR_DIRECTLINK ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_tdls_config_cs_params*,int) ;

int mwifiex_config_tdls_cs_params(struct mwifiex_private *priv)
{
 struct mwifiex_tdls_config_cs_params config_tdls_cs_params;

 config_tdls_cs_params.unit_time = MWIFIEX_DEF_CS_UNIT_TIME;
 config_tdls_cs_params.thr_otherlink = MWIFIEX_DEF_CS_THR_OTHERLINK;
 config_tdls_cs_params.thr_directlink = MWIFIEX_DEF_THR_DIRECTLINK;

 return mwifiex_send_cmd(priv, HostCmd_CMD_TDLS_CONFIG,
    ACT_TDLS_CS_PARAMS, 0,
    &config_tdls_cs_params, 1);
}

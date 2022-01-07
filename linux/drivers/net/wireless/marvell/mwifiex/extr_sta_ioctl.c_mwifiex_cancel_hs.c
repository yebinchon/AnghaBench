
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_hs_cfg {int is_invoke_hostcmd; int conditions; } ;


 int HS_CFG_CANCEL ;
 int HostCmd_ACT_GEN_SET ;
 int mwifiex_set_hs_params (struct mwifiex_private*,int ,int,struct mwifiex_ds_hs_cfg*) ;

int mwifiex_cancel_hs(struct mwifiex_private *priv, int cmd_type)
{
 struct mwifiex_ds_hs_cfg hscfg;

 hscfg.conditions = HS_CFG_CANCEL;
 hscfg.is_invoke_hostcmd = 1;

 return mwifiex_set_hs_params(priv, HostCmd_ACT_GEN_SET,
        cmd_type, &hscfg);
}

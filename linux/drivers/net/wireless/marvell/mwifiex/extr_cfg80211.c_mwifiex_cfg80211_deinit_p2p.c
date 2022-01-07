
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mwifiex_private {int dummy; } ;


 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_P2P_MODE_CFG ;
 int P2P_MODE_DISABLE ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int
mwifiex_cfg80211_deinit_p2p(struct mwifiex_private *priv)
{
 u16 mode = P2P_MODE_DISABLE;

 if (mwifiex_send_cmd(priv, HostCmd_CMD_P2P_MODE_CFG,
        HostCmd_ACT_GEN_SET, 0, &mode, 1))
  return -1;

 return 0;
}

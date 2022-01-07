
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mwifiex_private {int dummy; } ;


 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_SNMP_MIB ;
 scalar_t__ MWIFIEX_RTS_MAX_VALUE ;
 scalar_t__ MWIFIEX_RTS_MIN_VALUE ;
 int RTS_THRESH_I ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,scalar_t__*,int) ;

__attribute__((used)) static int
mwifiex_set_rts(struct mwifiex_private *priv, u32 rts_thr)
{
 if (rts_thr < MWIFIEX_RTS_MIN_VALUE || rts_thr > MWIFIEX_RTS_MAX_VALUE)
  rts_thr = MWIFIEX_RTS_MAX_VALUE;

 return mwifiex_send_cmd(priv, HostCmd_CMD_802_11_SNMP_MIB,
    HostCmd_ACT_GEN_SET, RTS_THRESH_I,
    &rts_thr, 1);
}

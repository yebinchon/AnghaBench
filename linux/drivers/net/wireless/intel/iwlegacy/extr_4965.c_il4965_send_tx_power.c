
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int flags; int channel; } ;
struct il_priv {scalar_t__ band; TYPE_1__ active; int status; } ;
struct il4965_txpowertable_cmd {int band; int tx_power; int channel; int member_0; } ;
typedef int cmd ;


 int C_TX_PWR_TBL ;
 int EAGAIN ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK ;
 int S_SCAN_HW ;
 scalar_t__ WARN_ONCE (int ,char*) ;
 int il4965_fill_txpower_tbl (struct il_priv*,int,int ,int,int,int *) ;
 int il_send_cmd_pdu (struct il_priv*,int ,int,struct il4965_txpowertable_cmd*) ;
 int iw4965_is_ht40_channel (int) ;
 int le16_to_cpu (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
il4965_send_tx_power(struct il_priv *il)
{
 struct il4965_txpowertable_cmd cmd = { 0 };
 int ret;
 u8 band = 0;
 bool is_ht40 = 0;
 u8 ctrl_chan_high = 0;

 if (WARN_ONCE
     (test_bit(S_SCAN_HW, &il->status),
      "TX Power requested while scanning!\n"))
  return -EAGAIN;

 band = il->band == NL80211_BAND_2GHZ;

 is_ht40 = iw4965_is_ht40_channel(il->active.flags);

 if (is_ht40 && (il->active.flags & RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK))
  ctrl_chan_high = 1;

 cmd.band = band;
 cmd.channel = il->active.channel;

 ret =
     il4965_fill_txpower_tbl(il, band, le16_to_cpu(il->active.channel),
        is_ht40, ctrl_chan_high, &cmd.tx_power);
 if (ret)
  goto out;

 ret = il_send_cmd_pdu(il, C_TX_PWR_TBL, sizeof(cmd), &cmd);

out:
 return ret;
}

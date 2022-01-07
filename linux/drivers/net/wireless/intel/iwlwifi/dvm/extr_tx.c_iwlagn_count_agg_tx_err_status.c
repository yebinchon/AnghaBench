
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int unknown; int delay_tx; int dump_tx; int response; int bad_crc32; int scd_query; int last_sent_bt_kill; int last_sent_try; int last_sent_ttl; int abort; int few_bytes; int bt_prio; int underrun; } ;
struct iwl_priv {TYPE_1__ reply_agg_tx_stats; } ;
 int AGG_TX_STATUS_MSK ;

__attribute__((used)) static void iwlagn_count_agg_tx_err_status(struct iwl_priv *priv, u16 status)
{
 status &= AGG_TX_STATUS_MSK;

 switch (status) {
 case 128:
  priv->reply_agg_tx_stats.underrun++;
  break;
 case 138:
  priv->reply_agg_tx_stats.bt_prio++;
  break;
 case 135:
  priv->reply_agg_tx_stats.few_bytes++;
  break;
 case 139:
  priv->reply_agg_tx_stats.abort++;
  break;
 case 132:
  priv->reply_agg_tx_stats.last_sent_ttl++;
  break;
 case 133:
  priv->reply_agg_tx_stats.last_sent_try++;
  break;
 case 134:
  priv->reply_agg_tx_stats.last_sent_bt_kill++;
  break;
 case 130:
  priv->reply_agg_tx_stats.scd_query++;
  break;
 case 129:
  priv->reply_agg_tx_stats.bad_crc32++;
  break;
 case 131:
  priv->reply_agg_tx_stats.response++;
  break;
 case 136:
  priv->reply_agg_tx_stats.dump_tx++;
  break;
 case 137:
  priv->reply_agg_tx_stats.delay_tx++;
  break;
 default:
  priv->reply_agg_tx_stats.unknown++;
  break;
 }
}

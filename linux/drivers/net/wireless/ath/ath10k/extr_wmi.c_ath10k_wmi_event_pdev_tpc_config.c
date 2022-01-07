
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct wmi_pdev_tpc_config_event {int rate_max; int num_tx_chain; int twice_max_rd_power; int power_limit; int twice_antenna_reduction; int twice_antenna_gain; int reg_domain; int ctl; int phy_mode; int chan_freq; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k_tpc_stats {int chan_freq; int phy_mode; int ctl; int reg_domain; int twice_antenna_reduction; int power_limit; int twice_max_rd_power; int num_tx_chain; int rate_max; int twice_antenna_gain; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int GFP_ATOMIC ;
 int WMI_TPC_PREAM_TABLE_MAX ;
 int WMI_TPC_RATE_MAX ;
 int WMI_TPC_TABLE_TYPE_CDD ;
 int WMI_TPC_TABLE_TYPE_STBC ;
 int WMI_TPC_TABLE_TYPE_TXBF ;
 scalar_t__ WMI_TPC_TX_N_CHAIN ;
 int __le32_to_cpu (int ) ;
 int a_sle32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int,int,int ,int,int,int,int,int) ;
 int ath10k_debug_tpc_stats_process (struct ath10k*,struct ath10k_tpc_stats*) ;
 int ath10k_tpc_config_disp_tables (struct ath10k*,struct wmi_pdev_tpc_config_event*,struct ath10k_tpc_stats*,int *,int *,int ) ;
 int ath10k_warn (struct ath10k*,char*,scalar_t__,scalar_t__) ;
 int ath10k_wmi_tpc_config_get_rate_code (int *,int *,scalar_t__) ;
 struct ath10k_tpc_stats* kzalloc (int,int ) ;

void ath10k_wmi_event_pdev_tpc_config(struct ath10k *ar, struct sk_buff *skb)
{
 u32 num_tx_chain;
 u8 rate_code[WMI_TPC_RATE_MAX];
 u16 pream_table[WMI_TPC_PREAM_TABLE_MAX];
 struct wmi_pdev_tpc_config_event *ev;
 struct ath10k_tpc_stats *tpc_stats;

 ev = (struct wmi_pdev_tpc_config_event *)skb->data;

 num_tx_chain = __le32_to_cpu(ev->num_tx_chain);

 if (num_tx_chain > WMI_TPC_TX_N_CHAIN) {
  ath10k_warn(ar, "number of tx chain is %d greater than TPC configured tx chain %d\n",
       num_tx_chain, WMI_TPC_TX_N_CHAIN);
  return;
 }

 tpc_stats = kzalloc(sizeof(*tpc_stats), GFP_ATOMIC);
 if (!tpc_stats)
  return;

 ath10k_wmi_tpc_config_get_rate_code(rate_code, pream_table,
         num_tx_chain);

 tpc_stats->chan_freq = __le32_to_cpu(ev->chan_freq);
 tpc_stats->phy_mode = __le32_to_cpu(ev->phy_mode);
 tpc_stats->ctl = __le32_to_cpu(ev->ctl);
 tpc_stats->reg_domain = __le32_to_cpu(ev->reg_domain);
 tpc_stats->twice_antenna_gain = a_sle32_to_cpu(ev->twice_antenna_gain);
 tpc_stats->twice_antenna_reduction =
  __le32_to_cpu(ev->twice_antenna_reduction);
 tpc_stats->power_limit = __le32_to_cpu(ev->power_limit);
 tpc_stats->twice_max_rd_power = __le32_to_cpu(ev->twice_max_rd_power);
 tpc_stats->num_tx_chain = __le32_to_cpu(ev->num_tx_chain);
 tpc_stats->rate_max = __le32_to_cpu(ev->rate_max);

 ath10k_tpc_config_disp_tables(ar, ev, tpc_stats,
          rate_code, pream_table,
          WMI_TPC_TABLE_TYPE_CDD);
 ath10k_tpc_config_disp_tables(ar, ev, tpc_stats,
          rate_code, pream_table,
          WMI_TPC_TABLE_TYPE_STBC);
 ath10k_tpc_config_disp_tables(ar, ev, tpc_stats,
          rate_code, pream_table,
          WMI_TPC_TABLE_TYPE_TXBF);

 ath10k_debug_tpc_stats_process(ar, tpc_stats);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi event tpc config channel %d mode %d ctl %d regd %d gain %d %d limit %d max_power %d tx_chanins %d rates %d\n",
     __le32_to_cpu(ev->chan_freq),
     __le32_to_cpu(ev->phy_mode),
     __le32_to_cpu(ev->ctl),
     __le32_to_cpu(ev->reg_domain),
     a_sle32_to_cpu(ev->twice_antenna_gain),
     __le32_to_cpu(ev->twice_antenna_reduction),
     __le32_to_cpu(ev->power_limit),
     __le32_to_cpu(ev->twice_max_rd_power) / 2,
     __le32_to_cpu(ev->num_tx_chain),
     __le32_to_cpu(ev->rate_max));
}

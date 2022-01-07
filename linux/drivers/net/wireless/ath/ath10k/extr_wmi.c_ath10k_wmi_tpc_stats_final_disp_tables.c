
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
typedef int tpc_value ;
struct wmi_pdev_tpc_final_table_event {int num_tx_chain; int rate_max; int flags; } ;
struct ath10k_tpc_stats_final {TYPE_1__* tpc_table_final; void** flag; } ;
struct ath10k {int dummy; } ;
typedef int buff ;
struct TYPE_2__ {size_t* pream_idx; int* rate_code; int * tpc_value; } ;


 int ATH10K_DBG_WMI ;
 void* ATH10K_TPC_TABLE_TYPE_FLAG ;
 int WMI_TPC_BUF_SIZE ;
 size_t WMI_TPC_CONFIG_EVENT_FLAG_TABLE_CDD ;
 size_t WMI_TPC_CONFIG_EVENT_FLAG_TABLE_STBC ;
 size_t WMI_TPC_CONFIG_EVENT_FLAG_TABLE_TXBF ;



 int WMI_TPC_TX_N_CHAIN ;
 size_t __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 int ath10k_wmi_tpc_final_get_rate (struct ath10k*,struct wmi_pdev_tpc_final_table_event*,size_t,size_t,int,int,size_t) ;
 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
ath10k_wmi_tpc_stats_final_disp_tables(struct ath10k *ar,
           struct wmi_pdev_tpc_final_table_event *ev,
           struct ath10k_tpc_stats_final *tpc_stats,
           u8 *rate_code, u16 *pream_table, u8 type)
{
 u32 i, j, pream_idx, flags;
 u8 tpc[WMI_TPC_TX_N_CHAIN];
 char tpc_value[WMI_TPC_TX_N_CHAIN * WMI_TPC_BUF_SIZE];
 char buff[WMI_TPC_BUF_SIZE];

 flags = __le32_to_cpu(ev->flags);

 switch (type) {
 case 130:
  if (!(flags & WMI_TPC_CONFIG_EVENT_FLAG_TABLE_CDD)) {
   ath10k_dbg(ar, ATH10K_DBG_WMI, "CDD not supported\n");
   tpc_stats->flag[type] = ATH10K_TPC_TABLE_TYPE_FLAG;
   return;
  }
  break;
 case 129:
  if (!(flags & WMI_TPC_CONFIG_EVENT_FLAG_TABLE_STBC)) {
   ath10k_dbg(ar, ATH10K_DBG_WMI, "STBC not supported\n");
   tpc_stats->flag[type] = ATH10K_TPC_TABLE_TYPE_FLAG;
   return;
  }
  break;
 case 128:
  if (!(flags & WMI_TPC_CONFIG_EVENT_FLAG_TABLE_TXBF)) {
   ath10k_dbg(ar, ATH10K_DBG_WMI, "TXBF not supported\n");
   tpc_stats->flag[type] = ATH10K_TPC_TABLE_TYPE_FLAG;
   return;
  }
  break;
 default:
  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "invalid table type in wmi tpc event: %d\n", type);
  return;
 }

 pream_idx = 0;
 for (i = 0; i < __le32_to_cpu(ev->rate_max); i++) {
  memset(tpc_value, 0, sizeof(tpc_value));
  memset(buff, 0, sizeof(buff));
  if (i == pream_table[pream_idx])
   pream_idx++;

  for (j = 0; j < WMI_TPC_TX_N_CHAIN; j++) {
   if (j >= __le32_to_cpu(ev->num_tx_chain))
    break;

   tpc[j] = ath10k_wmi_tpc_final_get_rate(ar, ev, i, j + 1,
              rate_code[i],
              type, pream_idx);
   snprintf(buff, sizeof(buff), "%8d ", tpc[j]);
   strlcat(tpc_value, buff, sizeof(tpc_value));
  }
  tpc_stats->tpc_table_final[type].pream_idx[i] = pream_idx;
  tpc_stats->tpc_table_final[type].rate_code[i] = rate_code[i];
  memcpy(tpc_stats->tpc_table_final[type].tpc_value[i],
         tpc_value, sizeof(tpc_value));
 }
}

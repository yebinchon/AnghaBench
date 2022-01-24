#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  size_t u32 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  tpc_value ;
struct wmi_pdev_tpc_config_event {int /*<<< orphan*/  num_tx_chain; int /*<<< orphan*/  rate_max; int /*<<< orphan*/  flags; } ;
struct ath10k_tpc_stats {TYPE_1__* tpc_table; void** flag; } ;
struct ath10k {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;
struct TYPE_2__ {size_t* pream_idx; int* rate_code; int /*<<< orphan*/ * tpc_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 void* ATH10K_TPC_TABLE_TYPE_FLAG ; 
 int WMI_TPC_BUF_SIZE ; 
 size_t WMI_TPC_CONFIG_EVENT_FLAG_TABLE_CDD ; 
 size_t WMI_TPC_CONFIG_EVENT_FLAG_TABLE_STBC ; 
 size_t WMI_TPC_CONFIG_EVENT_FLAG_TABLE_TXBF ; 
#define  WMI_TPC_TABLE_TYPE_CDD 130 
#define  WMI_TPC_TABLE_TYPE_STBC 129 
#define  WMI_TPC_TABLE_TYPE_TXBF 128 
 int WMI_TPC_TX_N_CHAIN ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct ath10k*,struct wmi_pdev_tpc_config_event*,size_t,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void FUNC7(struct ath10k *ar,
					  struct wmi_pdev_tpc_config_event *ev,
					  struct ath10k_tpc_stats *tpc_stats,
					  u8 *rate_code, u16 *pream_table, u8 type)
{
	u32 i, j, pream_idx, flags;
	u8 tpc[WMI_TPC_TX_N_CHAIN];
	char tpc_value[WMI_TPC_TX_N_CHAIN * WMI_TPC_BUF_SIZE];
	char buff[WMI_TPC_BUF_SIZE];

	flags = FUNC0(ev->flags);

	switch (type) {
	case WMI_TPC_TABLE_TYPE_CDD:
		if (!(flags & WMI_TPC_CONFIG_EVENT_FLAG_TABLE_CDD)) {
			FUNC1(ar, ATH10K_DBG_WMI, "CDD not supported\n");
			tpc_stats->flag[type] = ATH10K_TPC_TABLE_TYPE_FLAG;
			return;
		}
		break;
	case WMI_TPC_TABLE_TYPE_STBC:
		if (!(flags & WMI_TPC_CONFIG_EVENT_FLAG_TABLE_STBC)) {
			FUNC1(ar, ATH10K_DBG_WMI, "STBC not supported\n");
			tpc_stats->flag[type] = ATH10K_TPC_TABLE_TYPE_FLAG;
			return;
		}
		break;
	case WMI_TPC_TABLE_TYPE_TXBF:
		if (!(flags & WMI_TPC_CONFIG_EVENT_FLAG_TABLE_TXBF)) {
			FUNC1(ar, ATH10K_DBG_WMI, "TXBF not supported\n");
			tpc_stats->flag[type] = ATH10K_TPC_TABLE_TYPE_FLAG;
			return;
		}
		break;
	default:
		FUNC1(ar, ATH10K_DBG_WMI,
			   "invalid table type in wmi tpc event: %d\n", type);
		return;
	}

	pream_idx = 0;
	for (i = 0; i < FUNC0(ev->rate_max); i++) {
		FUNC4(tpc_value, 0, sizeof(tpc_value));
		FUNC4(buff, 0, sizeof(buff));
		if (i == pream_table[pream_idx])
			pream_idx++;

		for (j = 0; j < WMI_TPC_TX_N_CHAIN; j++) {
			if (j >= FUNC0(ev->num_tx_chain))
				break;

			tpc[j] = FUNC2(ar, ev, i, j + 1,
							    rate_code[i],
							    type);
			FUNC5(buff, sizeof(buff), "%8d ", tpc[j]);
			FUNC6(tpc_value, buff, sizeof(tpc_value));
		}
		tpc_stats->tpc_table[type].pream_idx[i] = pream_idx;
		tpc_stats->tpc_table[type].rate_code[i] = rate_code[i];
		FUNC3(tpc_stats->tpc_table[type].tpc_value[i],
		       tpc_value, sizeof(tpc_value));
	}
}
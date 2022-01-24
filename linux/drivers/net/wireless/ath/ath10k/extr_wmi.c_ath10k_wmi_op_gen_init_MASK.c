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
typedef  int u32 ;
struct wmi_resource_config {void* max_frag_entries; void* num_msdu_desc; void* gtk_offload_max_vdev; void* vow_config; void* rx_skip_defrag_timeout_dup_detection_check; void* mac_aggr_delim; void* dma_burst_size; void* num_wds_entries; void* tx_dbg_log_size; void* mcast2ucast_mode; void* num_mcast_table_elems; void* num_mcast_groups; void* roam_offload_max_ap_profiles; void* roam_offload_max_vdev; void* bmiss_offload_max_vdev; void* scan_max_pending_reqs; void* rx_decap_mode; void* rx_timeout_pri_bk; void* rx_timeout_pri_be; void* rx_timeout_pri_vi; void* rx_timeout_pri_vo; void* rx_chain_mask; void* tx_chain_mask; void* ast_skid_limit; void* num_tids; void* num_peer_keys; void* num_offload_reorder_bufs; void* num_offload_peers; void* num_peers; void* num_vdevs; } ;
struct wmi_init_cmd {int /*<<< orphan*/  mem_chunks; int /*<<< orphan*/  resource_config; } ;
struct sk_buff {scalar_t__ data; } ;
struct host_memory_chunk {int dummy; } ;
struct TYPE_2__ {int rx_decap_mode; int num_mem_chunks; } ;
struct ath10k {TYPE_1__ wmi; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int TARGET_AST_SKID_LIMIT ; 
 int TARGET_BMISS_OFFLOAD_MAX_VDEV ; 
 int TARGET_DMA_BURST_SIZE ; 
 int TARGET_GTK_OFFLOAD_MAX_VDEV ; 
 int TARGET_MAC_AGGR_DELIM ; 
 int TARGET_MAX_FRAG_ENTRIES ; 
 int TARGET_MCAST2UCAST_MODE ; 
 int TARGET_NUM_MCAST_GROUPS ; 
 int TARGET_NUM_MCAST_TABLE_ELEMS ; 
 int TARGET_NUM_MSDU_DESC ; 
 int TARGET_NUM_OFFLOAD_PEERS ; 
 int TARGET_NUM_OFFLOAD_REORDER_BUFS ; 
 int TARGET_NUM_PEERS ; 
 int TARGET_NUM_PEER_KEYS ; 
 int TARGET_NUM_TIDS ; 
 int TARGET_NUM_VDEVS ; 
 int TARGET_NUM_WDS_ENTRIES ; 
 int TARGET_ROAM_OFFLOAD_MAX_AP_PROFILES ; 
 int TARGET_ROAM_OFFLOAD_MAX_VDEV ; 
 int TARGET_RX_CHAIN_MASK ; 
 int TARGET_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK ; 
 int TARGET_RX_TIMEOUT_HI_PRI ; 
 int TARGET_RX_TIMEOUT_LO_PRI ; 
 int TARGET_SCAN_MAX_PENDING_REQS ; 
 int TARGET_TX_CHAIN_MASK ; 
 int TARGET_TX_DBG_LOG_SIZE ; 
 int TARGET_VOW_CONFIG ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wmi_resource_config*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct ath10k *ar)
{
	struct wmi_init_cmd *cmd;
	struct sk_buff *buf;
	struct wmi_resource_config config = {};
	u32 len, val;

	config.num_vdevs = FUNC1(TARGET_NUM_VDEVS);
	config.num_peers = FUNC1(TARGET_NUM_PEERS);
	config.num_offload_peers = FUNC1(TARGET_NUM_OFFLOAD_PEERS);

	config.num_offload_reorder_bufs =
		FUNC1(TARGET_NUM_OFFLOAD_REORDER_BUFS);

	config.num_peer_keys = FUNC1(TARGET_NUM_PEER_KEYS);
	config.num_tids = FUNC1(TARGET_NUM_TIDS);
	config.ast_skid_limit = FUNC1(TARGET_AST_SKID_LIMIT);
	config.tx_chain_mask = FUNC1(TARGET_TX_CHAIN_MASK);
	config.rx_chain_mask = FUNC1(TARGET_RX_CHAIN_MASK);
	config.rx_timeout_pri_vo = FUNC1(TARGET_RX_TIMEOUT_LO_PRI);
	config.rx_timeout_pri_vi = FUNC1(TARGET_RX_TIMEOUT_LO_PRI);
	config.rx_timeout_pri_be = FUNC1(TARGET_RX_TIMEOUT_LO_PRI);
	config.rx_timeout_pri_bk = FUNC1(TARGET_RX_TIMEOUT_HI_PRI);
	config.rx_decap_mode = FUNC1(ar->wmi.rx_decap_mode);
	config.scan_max_pending_reqs =
		FUNC1(TARGET_SCAN_MAX_PENDING_REQS);

	config.bmiss_offload_max_vdev =
		FUNC1(TARGET_BMISS_OFFLOAD_MAX_VDEV);

	config.roam_offload_max_vdev =
		FUNC1(TARGET_ROAM_OFFLOAD_MAX_VDEV);

	config.roam_offload_max_ap_profiles =
		FUNC1(TARGET_ROAM_OFFLOAD_MAX_AP_PROFILES);

	config.num_mcast_groups = FUNC1(TARGET_NUM_MCAST_GROUPS);
	config.num_mcast_table_elems =
		FUNC1(TARGET_NUM_MCAST_TABLE_ELEMS);

	config.mcast2ucast_mode = FUNC1(TARGET_MCAST2UCAST_MODE);
	config.tx_dbg_log_size = FUNC1(TARGET_TX_DBG_LOG_SIZE);
	config.num_wds_entries = FUNC1(TARGET_NUM_WDS_ENTRIES);
	config.dma_burst_size = FUNC1(TARGET_DMA_BURST_SIZE);
	config.mac_aggr_delim = FUNC1(TARGET_MAC_AGGR_DELIM);

	val = TARGET_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK;
	config.rx_skip_defrag_timeout_dup_detection_check = FUNC1(val);

	config.vow_config = FUNC1(TARGET_VOW_CONFIG);

	config.gtk_offload_max_vdev =
		FUNC1(TARGET_GTK_OFFLOAD_MAX_VDEV);

	config.num_msdu_desc = FUNC1(TARGET_NUM_MSDU_DESC);
	config.max_frag_entries = FUNC1(TARGET_MAX_FRAG_ENTRIES);

	len = sizeof(*cmd) +
	      (sizeof(struct host_memory_chunk) * ar->wmi.num_mem_chunks);

	buf = FUNC3(ar, len);
	if (!buf)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_init_cmd *)buf->data;

	FUNC5(&cmd->resource_config, &config, sizeof(config));
	FUNC4(ar, &cmd->mem_chunks);

	FUNC2(ar, ATH10K_DBG_WMI, "wmi init\n");
	return buf;
}
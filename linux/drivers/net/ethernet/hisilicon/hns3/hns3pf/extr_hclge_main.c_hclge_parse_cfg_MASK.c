#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_param_cmd {int /*<<< orphan*/ * param; } ;
struct hclge_cfg {int* mac_addr; void* umv_space; void* speed_ability; void* numa_node_map; void* rss_size_max; void* default_speed; void* rx_buf_len; void* media_type; void* phy_addr; void* tqp_desc_num; void* tc_num; void* vmdq_vport_num; } ;

/* Variables and functions */
 unsigned int ETH_ALEN ; 
 int /*<<< orphan*/  HCLGE_CFG_DEFAULT_SPEED_M ; 
 int /*<<< orphan*/  HCLGE_CFG_DEFAULT_SPEED_S ; 
 int /*<<< orphan*/  HCLGE_CFG_MAC_ADDR_H_M ; 
 int /*<<< orphan*/  HCLGE_CFG_MAC_ADDR_H_S ; 
 int /*<<< orphan*/  HCLGE_CFG_MEDIA_TP_M ; 
 int /*<<< orphan*/  HCLGE_CFG_MEDIA_TP_S ; 
 int /*<<< orphan*/  HCLGE_CFG_PHY_ADDR_M ; 
 int /*<<< orphan*/  HCLGE_CFG_PHY_ADDR_S ; 
 int /*<<< orphan*/  HCLGE_CFG_RSS_SIZE_M ; 
 int /*<<< orphan*/  HCLGE_CFG_RSS_SIZE_S ; 
 int /*<<< orphan*/  HCLGE_CFG_RX_BUF_LEN_M ; 
 int /*<<< orphan*/  HCLGE_CFG_RX_BUF_LEN_S ; 
 int /*<<< orphan*/  HCLGE_CFG_SPEED_ABILITY_M ; 
 int /*<<< orphan*/  HCLGE_CFG_SPEED_ABILITY_S ; 
 int /*<<< orphan*/  HCLGE_CFG_TC_NUM_M ; 
 int /*<<< orphan*/  HCLGE_CFG_TC_NUM_S ; 
 int /*<<< orphan*/  HCLGE_CFG_TQP_DESC_N_M ; 
 int /*<<< orphan*/  HCLGE_CFG_TQP_DESC_N_S ; 
 int /*<<< orphan*/  HCLGE_CFG_UMV_TBL_SPACE_M ; 
 int /*<<< orphan*/  HCLGE_CFG_UMV_TBL_SPACE_S ; 
 int /*<<< orphan*/  HCLGE_CFG_VMDQ_M ; 
 int /*<<< orphan*/  HCLGE_CFG_VMDQ_S ; 
 void* HCLGE_DEFAULT_UMV_SPACE_PER_PF ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hclge_cfg *cfg, struct hclge_desc *desc)
{
	struct hclge_cfg_param_cmd *req;
	u64 mac_addr_tmp_high;
	u64 mac_addr_tmp;
	unsigned int i;

	req = (struct hclge_cfg_param_cmd *)desc[0].data;

	/* get the configuration */
	cfg->vmdq_vport_num = FUNC1(FUNC0(req->param[0]),
					      HCLGE_CFG_VMDQ_M,
					      HCLGE_CFG_VMDQ_S);
	cfg->tc_num = FUNC1(FUNC0(req->param[0]),
				      HCLGE_CFG_TC_NUM_M, HCLGE_CFG_TC_NUM_S);
	cfg->tqp_desc_num = FUNC1(FUNC0(req->param[0]),
					    HCLGE_CFG_TQP_DESC_N_M,
					    HCLGE_CFG_TQP_DESC_N_S);

	cfg->phy_addr = FUNC1(FUNC0(req->param[1]),
					HCLGE_CFG_PHY_ADDR_M,
					HCLGE_CFG_PHY_ADDR_S);
	cfg->media_type = FUNC1(FUNC0(req->param[1]),
					  HCLGE_CFG_MEDIA_TP_M,
					  HCLGE_CFG_MEDIA_TP_S);
	cfg->rx_buf_len = FUNC1(FUNC0(req->param[1]),
					  HCLGE_CFG_RX_BUF_LEN_M,
					  HCLGE_CFG_RX_BUF_LEN_S);
	/* get mac_address */
	mac_addr_tmp = FUNC0(req->param[2]);
	mac_addr_tmp_high = FUNC1(FUNC0(req->param[3]),
					    HCLGE_CFG_MAC_ADDR_H_M,
					    HCLGE_CFG_MAC_ADDR_H_S);

	mac_addr_tmp |= (mac_addr_tmp_high << 31) << 1;

	cfg->default_speed = FUNC1(FUNC0(req->param[3]),
					     HCLGE_CFG_DEFAULT_SPEED_M,
					     HCLGE_CFG_DEFAULT_SPEED_S);
	cfg->rss_size_max = FUNC1(FUNC0(req->param[3]),
					    HCLGE_CFG_RSS_SIZE_M,
					    HCLGE_CFG_RSS_SIZE_S);

	for (i = 0; i < ETH_ALEN; i++)
		cfg->mac_addr[i] = (mac_addr_tmp >> (8 * i)) & 0xff;

	req = (struct hclge_cfg_param_cmd *)desc[1].data;
	cfg->numa_node_map = FUNC0(req->param[0]);

	cfg->speed_ability = FUNC1(FUNC0(req->param[1]),
					     HCLGE_CFG_SPEED_ABILITY_M,
					     HCLGE_CFG_SPEED_ABILITY_S);
	cfg->umv_space = FUNC1(FUNC0(req->param[1]),
					 HCLGE_CFG_UMV_TBL_SPACE_M,
					 HCLGE_CFG_UMV_TBL_SPACE_S);
	if (!cfg->umv_space)
		cfg->umv_space = HCLGE_DEFAULT_UMV_SPACE_PER_PF;
}
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
struct niu_rdc_tables {int first_table_num; } ;
struct niu_parent {struct niu_rdc_tables* rdc_group_cfg; } ;
struct niu {size_t port; struct niu_parent* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_FAULT_CNT ; 
 unsigned long MAC_NUM_HASH ; 
 int /*<<< orphan*/  RXMAC_BC_FRM_CNT ; 
 int /*<<< orphan*/  RXMAC_BT_CNT ; 
 int /*<<< orphan*/  RXMAC_CD_VIO_CNT ; 
 int /*<<< orphan*/  RXMAC_CRC_ER_CNT ; 
 int /*<<< orphan*/  RXMAC_FRAG_CNT ; 
 int /*<<< orphan*/  RXMAC_HIST_CNT1 ; 
 int /*<<< orphan*/  RXMAC_HIST_CNT2 ; 
 int /*<<< orphan*/  RXMAC_HIST_CNT3 ; 
 int /*<<< orphan*/  RXMAC_HIST_CNT4 ; 
 int /*<<< orphan*/  RXMAC_HIST_CNT5 ; 
 int /*<<< orphan*/  RXMAC_HIST_CNT6 ; 
 int /*<<< orphan*/  RXMAC_HIST_CNT7 ; 
 int /*<<< orphan*/  RXMAC_MC_FRM_CNT ; 
 int /*<<< orphan*/  RXMAC_MPSZER_CNT ; 
 int /*<<< orphan*/  XMAC_ADD_FILT0 ; 
 int /*<<< orphan*/  XMAC_ADD_FILT00_MASK ; 
 int /*<<< orphan*/  XMAC_ADD_FILT1 ; 
 int /*<<< orphan*/  XMAC_ADD_FILT12_MASK ; 
 int /*<<< orphan*/  XMAC_ADD_FILT2 ; 
 int /*<<< orphan*/  XMAC_CONFIG ; 
 int XMAC_CONFIG_ADDR_FILTER_EN ; 
 int XMAC_CONFIG_ERR_CHK_DIS ; 
 int XMAC_CONFIG_HASH_FILTER_EN ; 
 int XMAC_CONFIG_MAC2IPP_PKT_CNT_EN ; 
 int XMAC_CONFIG_PASS_FLOW_CTRL ; 
 int XMAC_CONFIG_PROMISCUOUS ; 
 int XMAC_CONFIG_PROMISC_GROUP ; 
 int XMAC_CONFIG_RCV_PAUSE_ENABLE ; 
 int XMAC_CONFIG_RESERVED_MULTICAST ; 
 int XMAC_CONFIG_RX_CODEV_CHK_DIS ; 
 int XMAC_CONFIG_RX_CRC_CHK_DIS ; 
 int XMAC_CONFIG_RX_MAC_ENABLE ; 
 int XMAC_CONFIG_STRIP_CRC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  XRXMAC_STAT_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct niu *np)
{
	struct niu_parent *parent = np->parent;
	struct niu_rdc_tables *tp = &parent->rdc_group_cfg[np->port];
	int first_rdc_table = tp->first_table_num;
	unsigned long i;
	u64 val;

	FUNC4(XMAC_ADD_FILT0, 0);
	FUNC4(XMAC_ADD_FILT1, 0);
	FUNC4(XMAC_ADD_FILT2, 0);
	FUNC4(XMAC_ADD_FILT12_MASK, 0);
	FUNC4(XMAC_ADD_FILT00_MASK, 0);
	for (i = 0; i < MAC_NUM_HASH; i++)
		FUNC4(FUNC0(i), 0);
	FUNC4(XRXMAC_STAT_MSK, ~(u64)0);
	FUNC2(np, first_rdc_table, 1);
	FUNC1(np, first_rdc_table, 1);

	val = FUNC3(XMAC_CONFIG);
	val &= ~(XMAC_CONFIG_RX_MAC_ENABLE |
		 XMAC_CONFIG_PROMISCUOUS |
		 XMAC_CONFIG_PROMISC_GROUP |
		 XMAC_CONFIG_ERR_CHK_DIS |
		 XMAC_CONFIG_RX_CRC_CHK_DIS |
		 XMAC_CONFIG_RESERVED_MULTICAST |
		 XMAC_CONFIG_RX_CODEV_CHK_DIS |
		 XMAC_CONFIG_ADDR_FILTER_EN |
		 XMAC_CONFIG_RCV_PAUSE_ENABLE |
		 XMAC_CONFIG_STRIP_CRC |
		 XMAC_CONFIG_PASS_FLOW_CTRL |
		 XMAC_CONFIG_MAC2IPP_PKT_CNT_EN);
	val |= (XMAC_CONFIG_HASH_FILTER_EN);
	FUNC4(XMAC_CONFIG, val);

	FUNC4(RXMAC_BT_CNT, 0);
	FUNC4(RXMAC_BC_FRM_CNT, 0);
	FUNC4(RXMAC_MC_FRM_CNT, 0);
	FUNC4(RXMAC_FRAG_CNT, 0);
	FUNC4(RXMAC_HIST_CNT1, 0);
	FUNC4(RXMAC_HIST_CNT2, 0);
	FUNC4(RXMAC_HIST_CNT3, 0);
	FUNC4(RXMAC_HIST_CNT4, 0);
	FUNC4(RXMAC_HIST_CNT5, 0);
	FUNC4(RXMAC_HIST_CNT6, 0);
	FUNC4(RXMAC_HIST_CNT7, 0);
	FUNC4(RXMAC_MPSZER_CNT, 0);
	FUNC4(RXMAC_CRC_ER_CNT, 0);
	FUNC4(RXMAC_CD_VIO_CNT, 0);
	FUNC4(LINK_FAULT_CNT, 0);
}
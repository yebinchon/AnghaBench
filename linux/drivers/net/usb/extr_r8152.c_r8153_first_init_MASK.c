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
struct r8152 {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; int mtu; } ;

/* Variables and functions */
 int ETH_FCS_LEN ; 
 int LINK_LIST_READY ; 
 int MCU_BORW_EN ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int MTPS_JUMBO ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NOW_IS_OOB ; 
 int /*<<< orphan*/  PLA_MTPS ; 
 int /*<<< orphan*/  PLA_OOB_CTRL ; 
 int /*<<< orphan*/  PLA_RCR ; 
 int /*<<< orphan*/  PLA_RMS ; 
 int /*<<< orphan*/  PLA_RXFIFO_CTRL0 ; 
 int /*<<< orphan*/  PLA_RXFIFO_CTRL1 ; 
 int /*<<< orphan*/  PLA_RXFIFO_CTRL2 ; 
 int /*<<< orphan*/  PLA_SFF_STS_7 ; 
 int /*<<< orphan*/  PLA_TCR0 ; 
 int /*<<< orphan*/  PLA_TXFIFO_CTRL ; 
 int RCR_ACPT_ALL ; 
 int RE_INIT_LL ; 
 int RXFIFO_THR1_NORMAL ; 
 int RXFIFO_THR2_NORMAL ; 
 int RXFIFO_THR3_NORMAL ; 
 int TCR0_AUTO_FIFO ; 
 int TXFIFO_THR_NORMAL2 ; 
 int VLAN_ETH_HLEN ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC9 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC10 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static void FUNC13(struct r8152 *tp)
{
	u32 ocp_data;
	int i;

	FUNC6(tp, false);
	FUNC11(tp, true);
	FUNC7(tp);

	ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_RCR);
	ocp_data &= ~RCR_ACPT_ALL;
	FUNC4(tp, MCU_TYPE_PLA, PLA_RCR, ocp_data);

	FUNC8(tp);
	FUNC9(tp);

	ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
	ocp_data &= ~NOW_IS_OOB;
	FUNC3(tp, MCU_TYPE_PLA, PLA_OOB_CTRL, ocp_data);

	ocp_data = FUNC2(tp, MCU_TYPE_PLA, PLA_SFF_STS_7);
	ocp_data &= ~MCU_BORW_EN;
	FUNC5(tp, MCU_TYPE_PLA, PLA_SFF_STS_7, ocp_data);

	for (i = 0; i < 1000; i++) {
		ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
		if (ocp_data & LINK_LIST_READY)
			break;
		FUNC12(1000, 2000);
	}

	ocp_data = FUNC2(tp, MCU_TYPE_PLA, PLA_SFF_STS_7);
	ocp_data |= RE_INIT_LL;
	FUNC5(tp, MCU_TYPE_PLA, PLA_SFF_STS_7, ocp_data);

	for (i = 0; i < 1000; i++) {
		ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
		if (ocp_data & LINK_LIST_READY)
			break;
		FUNC12(1000, 2000);
	}

	FUNC10(tp, tp->netdev->features & NETIF_F_HW_VLAN_CTAG_RX);

	ocp_data = tp->netdev->mtu + VLAN_ETH_HLEN + ETH_FCS_LEN;
	FUNC5(tp, MCU_TYPE_PLA, PLA_RMS, ocp_data);
	FUNC3(tp, MCU_TYPE_PLA, PLA_MTPS, MTPS_JUMBO);

	ocp_data = FUNC2(tp, MCU_TYPE_PLA, PLA_TCR0);
	ocp_data |= TCR0_AUTO_FIFO;
	FUNC5(tp, MCU_TYPE_PLA, PLA_TCR0, ocp_data);

	FUNC8(tp);

	/* rx share fifo credit full threshold */
	FUNC4(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL0, RXFIFO_THR1_NORMAL);
	FUNC5(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL1, RXFIFO_THR2_NORMAL);
	FUNC5(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL2, RXFIFO_THR3_NORMAL);
	/* TX share fifo free credit full threshold */
	FUNC4(tp, MCU_TYPE_PLA, PLA_TXFIFO_CTRL, TXFIFO_THR_NORMAL2);
}
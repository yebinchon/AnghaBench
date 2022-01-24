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
struct aq_hw_s {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_2__ {int flow_control; } ;

/* Variables and functions */
 int AQ_NIC_FC_RX ; 
 int HW_ATL_A0_RXBUF_MAX ; 
 int HW_ATL_A0_TXBUF_MAX ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct aq_hw_s*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct aq_hw_s*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct aq_hw_s*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct aq_hw_s*,int,unsigned int) ; 

__attribute__((used)) static int FUNC18(struct aq_hw_s *self)
{
	u32 tc = 0U;
	u32 buff_size = 0U;
	unsigned int i_priority = 0U;
	bool is_rx_flow_control = false;

	/* TPS Descriptor rate init */
	FUNC10(self, 0x0U);
	FUNC11(self, 0xA);

	/* TPS VM init */
	FUNC15(self, 0U);

	/* TPS TC credits init */
	FUNC12(self, 0U);
	FUNC9(self, 0U);

	FUNC16(self, 0xFFF, 0U);
	FUNC17(self, 0x64, 0U);
	FUNC13(self, 0x50, 0U);
	FUNC14(self, 0x1E, 0U);

	/* Tx buf size */
	buff_size = HW_ATL_A0_TXBUF_MAX;

	FUNC8(self, buff_size, tc);
	FUNC6(self,
						   (buff_size *
						   (1024 / 32U) * 66U) /
						   100U, tc);
	FUNC7(self,
						   (buff_size *
						   (1024 / 32U) * 50U) /
						   100U, tc);

	/* QoS Rx buf size per TC */
	tc = 0;
	is_rx_flow_control = (AQ_NIC_FC_RX & self->aq_nic_cfg->flow_control);
	buff_size = HW_ATL_A0_RXBUF_MAX;

	FUNC3(self, buff_size, tc);
	FUNC1(self,
						   (buff_size *
						   (1024U / 32U) * 66U) /
						   100U, tc);
	FUNC2(self,
						   (buff_size *
						   (1024U / 32U) * 50U) /
						   100U, tc);
	FUNC4(self, is_rx_flow_control ? 1U : 0U, tc);

	/* QoS 802.1p priority -> TC mapping */
	for (i_priority = 8U; i_priority--;)
		FUNC5(self, i_priority, 0U);

	return FUNC0(self);
}
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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int flags; } ;
struct lan743x_adapter {TYPE_1__ csr; } ;

/* Variables and functions */
 int DEFAULT_DMA_DESCRIPTOR_SPACING ; 
 int /*<<< orphan*/  DMAC_CFG ; 
 int /*<<< orphan*/  DMAC_CFG_CH_ARB_SEL_RX_HIGH_ ; 
 int /*<<< orphan*/  DMAC_CFG_COAL_EN_ ; 
 int /*<<< orphan*/  DMAC_CFG_MAX_DSPACE_128_ ; 
 int /*<<< orphan*/  DMAC_CFG_MAX_DSPACE_16_ ; 
 int /*<<< orphan*/  DMAC_CFG_MAX_DSPACE_32_ ; 
 int /*<<< orphan*/  DMAC_CFG_MAX_DSPACE_64_ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMAC_CMD ; 
 int /*<<< orphan*/  DMAC_CMD_SWR_ ; 
 int /*<<< orphan*/  DMAC_COAL_CFG ; 
 int /*<<< orphan*/  DMAC_COAL_CFG_CSR_EXIT_COAL_ ; 
 int /*<<< orphan*/  DMAC_COAL_CFG_FLUSH_INTS_ ; 
 int /*<<< orphan*/  DMAC_COAL_CFG_INT_EXIT_COAL_ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DMAC_COAL_CFG_TIMER_TX_START_ ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  DMAC_OBFF_CFG ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  DMA_DESCRIPTOR_SPACING_128 131 
#define  DMA_DESCRIPTOR_SPACING_16 130 
#define  DMA_DESCRIPTOR_SPACING_32 129 
#define  DMA_DESCRIPTOR_SPACING_64 128 
 int EPERM ; 
 int LAN743X_CSR_FLAG_IS_A0 ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct lan743x_adapter *adapter)
{
	u32 data = 0;

	FUNC7(adapter, DMAC_CMD, DMAC_CMD_SWR_);
	FUNC6(adapter, DMAC_CMD, DMAC_CMD_SWR_,
				 0, 1000, 20000, 100);
	switch (DEFAULT_DMA_DESCRIPTOR_SPACING) {
	case DMA_DESCRIPTOR_SPACING_16:
		data = DMAC_CFG_MAX_DSPACE_16_;
		break;
	case DMA_DESCRIPTOR_SPACING_32:
		data = DMAC_CFG_MAX_DSPACE_32_;
		break;
	case DMA_DESCRIPTOR_SPACING_64:
		data = DMAC_CFG_MAX_DSPACE_64_;
		break;
	case DMA_DESCRIPTOR_SPACING_128:
		data = DMAC_CFG_MAX_DSPACE_128_;
		break;
	default:
		return -EPERM;
	}
	if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0))
		data |= DMAC_CFG_COAL_EN_;
	data |= DMAC_CFG_CH_ARB_SEL_RX_HIGH_;
	data |= FUNC0(6);
	FUNC7(adapter, DMAC_CFG, data);
	data = FUNC2(1);
	data |= DMAC_COAL_CFG_TIMER_TX_START_;
	data |= DMAC_COAL_CFG_FLUSH_INTS_;
	data |= DMAC_COAL_CFG_INT_EXIT_COAL_;
	data |= DMAC_COAL_CFG_CSR_EXIT_COAL_;
	data |= FUNC3(0x0A);
	data |= FUNC1(0x0C);
	FUNC7(adapter, DMAC_COAL_CFG, data);
	data = FUNC5(0x08);
	data |= FUNC4(0x0A);
	FUNC7(adapter, DMAC_OBFF_CFG, data);
	return 0;
}
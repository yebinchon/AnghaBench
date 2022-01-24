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
typedef  int u32 ;
struct lan743x_rx {int /*<<< orphan*/  channel_number; int /*<<< orphan*/  napi; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_INT_EN_SET ; 
 int /*<<< orphan*/  DMAC_INT_STS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_EN_CLR ; 
 int /*<<< orphan*/  INT_EN_SET ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ ; 
 int FUNC2 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *context, u32 int_sts, u32 flags)
{
	struct lan743x_rx *rx = context;
	struct lan743x_adapter *adapter = rx->adapter;
	bool enable_flag = true;

	if (flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR) {
		FUNC3(adapter, INT_EN_CLR,
				  FUNC1(rx->channel_number));
	}

	if (int_sts & FUNC1(rx->channel_number)) {
		u32 rx_frame_bit = FUNC0(rx->channel_number);
		u32 dmac_int_sts;
		u32 dmac_int_en;

		if (flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ)
			dmac_int_sts = FUNC2(adapter, DMAC_INT_STS);
		else
			dmac_int_sts = rx_frame_bit;
		if (flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK)
			dmac_int_en = FUNC2(adapter,
						       DMAC_INT_EN_SET);
		else
			dmac_int_en = rx_frame_bit;

		dmac_int_en &= rx_frame_bit;
		dmac_int_sts &= dmac_int_en;
		if (dmac_int_sts & rx_frame_bit) {
			FUNC4(&rx->napi);
			enable_flag = false;/* poll funct will enable later */
		}
	}

	if (enable_flag) {
		/* enable isr */
		FUNC3(adapter, INT_EN_SET,
				  FUNC1(rx->channel_number));
	}
}
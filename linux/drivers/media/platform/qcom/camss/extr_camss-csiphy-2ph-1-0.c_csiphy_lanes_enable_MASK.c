#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int pos; } ;
struct csiphy_lanes_cfg {int num_data; TYPE_3__* data; TYPE_2__ clk; } ;
struct csiphy_device {scalar_t__ base; int /*<<< orphan*/  timer_clk_rate; } ;
struct csiphy_config {int combo_mode; TYPE_1__* csi2; } ;
struct TYPE_6__ {int pos; } ;
struct TYPE_4__ {struct csiphy_lanes_cfg lane_cfg; } ;

/* Variables and functions */
 scalar_t__ CAMSS_CSI_PHY_GLBL_PWR_CFG ; 
 scalar_t__ CAMSS_CSI_PHY_GLBL_RESET ; 
 scalar_t__ CAMSS_CSI_PHY_GLBL_T_INIT_CFG0 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ CAMSS_CSI_PHY_T_WAKEUP_CFG0 ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct csiphy_device *csiphy,
				struct csiphy_config *cfg,
				u32 pixel_clock, u8 bpp, u8 lane_mask)
{
	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
	u8 settle_cnt;
	u8 val, l = 0;
	int i = 0;

	settle_cnt = FUNC4(pixel_clock, bpp, c->num_data,
					    csiphy->timer_clk_rate);

	FUNC5(0x1, csiphy->base +
		       CAMSS_CSI_PHY_GLBL_T_INIT_CFG0);
	FUNC5(0x1, csiphy->base +
		       CAMSS_CSI_PHY_T_WAKEUP_CFG0);

	val = 0x1;
	val |= lane_mask << 1;
	FUNC5(val, csiphy->base + CAMSS_CSI_PHY_GLBL_PWR_CFG);

	val = cfg->combo_mode << 4;
	FUNC5(val, csiphy->base + CAMSS_CSI_PHY_GLBL_RESET);

	for (i = 0; i <= c->num_data; i++) {
		if (i == c->num_data)
			l = c->clk.pos;
		else
			l = c->data[i].pos;

		FUNC5(0x10, csiphy->base +
			       FUNC2(l));
		FUNC5(settle_cnt, csiphy->base +
			       FUNC3(l));
		FUNC5(0x3f, csiphy->base +
			       FUNC1(l));
		FUNC5(0x3f, csiphy->base +
			       FUNC0(l));
	}
}
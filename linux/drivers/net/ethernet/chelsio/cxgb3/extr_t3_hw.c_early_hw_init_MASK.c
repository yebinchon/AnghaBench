#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct adapter_info {int gpio_out; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {scalar_t__ rev; TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_I2C_CFG ; 
 int /*<<< orphan*/  A_MC5_DB_SERVER_INDEX ; 
 int /*<<< orphan*/  A_SG_OCO_BASE ; 
 int /*<<< orphan*/  A_T3DBG_GPIO_EN ; 
 int /*<<< orphan*/  A_XGM_PORT_CFG ; 
 int F_CLKDIVRESET_ ; 
 int F_ENRGMII ; 
 int F_GPIO0_OEN ; 
 int F_GPIO0_OUT_VAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct adapter_info const*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 

__attribute__((used)) static void FUNC9(struct adapter *adapter,
			  const struct adapter_info *ai)
{
	u32 val = FUNC2(FUNC4(adapter) ? 3 : 2);

	FUNC5(adapter, ai);
	FUNC7(adapter, A_I2C_CFG,	/* set for 80KHz */
		     FUNC1(adapter->params.vpd.cclk / 80 - 1));
	FUNC7(adapter, A_T3DBG_GPIO_EN,
		     ai->gpio_out | F_GPIO0_OEN | F_GPIO0_OUT_VAL);
	FUNC7(adapter, A_MC5_DB_SERVER_INDEX, 0);
	FUNC7(adapter, A_SG_OCO_BASE, FUNC0(0xfff));

	if (adapter->params.rev == 0 || !FUNC8(adapter))
		val |= F_ENRGMII;

	/* Enable MAC clocks so we can access the registers */
	FUNC7(adapter, A_XGM_PORT_CFG, val);
	FUNC6(adapter, A_XGM_PORT_CFG);

	val |= F_CLKDIVRESET_;
	FUNC7(adapter, A_XGM_PORT_CFG, val);
	FUNC6(adapter, A_XGM_PORT_CFG);
	FUNC7(adapter, FUNC3(A_XGM_PORT_CFG, 1), val);
	FUNC6(adapter, A_XGM_PORT_CFG);
}
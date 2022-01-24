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
struct meson_ao_cec_g12a_device {int /*<<< orphan*/  regmap_cec; TYPE_1__* data; int /*<<< orphan*/  regmap; } ;
struct cec_adapter {struct meson_ao_cec_g12a_device* priv; } ;
struct TYPE_2__ {scalar_t__ ctrl2_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  CECB_CTRL2 ; 
 int CECB_CTRL2_RISE_DEL_MAX ; 
 int CECB_GEN_CNTL_CLK_CTRL_MASK ; 
 int CECB_GEN_CNTL_CLK_ENABLE ; 
 int CECB_GEN_CNTL_FILTER_DEL ; 
 int CECB_GEN_CNTL_FILTER_TICK_1US ; 
 int CECB_GEN_CNTL_FILTER_TICK_SEL ; 
 int /*<<< orphan*/  CECB_GEN_CNTL_REG ; 
 int CECB_GEN_CNTL_RESET ; 
 int CECB_GEN_CNTL_SYS_CLK_EN ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_ao_cec_g12a_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct cec_adapter *adap, bool enable)
{
	struct meson_ao_cec_g12a_device *ao_cec = adap->priv;

	FUNC1(ao_cec, false);

	FUNC2(ao_cec->regmap, CECB_GEN_CNTL_REG,
			   CECB_GEN_CNTL_RESET, CECB_GEN_CNTL_RESET);

	if (!enable)
		return 0;

	/* Setup Filter */
	FUNC2(ao_cec->regmap, CECB_GEN_CNTL_REG,
			   CECB_GEN_CNTL_FILTER_TICK_SEL |
			   CECB_GEN_CNTL_FILTER_DEL,
			   FUNC0(CECB_GEN_CNTL_FILTER_TICK_SEL,
				      CECB_GEN_CNTL_FILTER_TICK_1US) |
			   FUNC0(CECB_GEN_CNTL_FILTER_DEL, 7));

	/* Enable System Clock */
	FUNC2(ao_cec->regmap, CECB_GEN_CNTL_REG,
			   CECB_GEN_CNTL_SYS_CLK_EN,
			   CECB_GEN_CNTL_SYS_CLK_EN);

	/* Enable gated clock (Normal mode). */
	FUNC2(ao_cec->regmap, CECB_GEN_CNTL_REG,
			   CECB_GEN_CNTL_CLK_CTRL_MASK,
			    FUNC0(CECB_GEN_CNTL_CLK_CTRL_MASK,
				       CECB_GEN_CNTL_CLK_ENABLE));

	/* Release Reset */
	FUNC2(ao_cec->regmap, CECB_GEN_CNTL_REG,
			   CECB_GEN_CNTL_RESET, 0);

	if (ao_cec->data->ctrl2_setup)
		FUNC3(ao_cec->regmap_cec, CECB_CTRL2,
			     FUNC0(CECB_CTRL2_RISE_DEL_MAX, 2));

	FUNC1(ao_cec, true);

	return 0;
}
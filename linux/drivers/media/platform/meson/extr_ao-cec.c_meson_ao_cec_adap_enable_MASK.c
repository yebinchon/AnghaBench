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
struct meson_ao_cec_device {scalar_t__ base; } ;
struct cec_adapter {struct meson_ao_cec_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_GEN_CNTL_CLK_CTRL_MASK ; 
 int /*<<< orphan*/  CEC_GEN_CNTL_CLK_ENABLE ; 
 scalar_t__ CEC_GEN_CNTL_REG ; 
 int /*<<< orphan*/  CEC_GEN_CNTL_RESET ; 
 int /*<<< orphan*/  CEC_SIGNAL_FREE_TIME_NEW_INITIATOR ; 
 int /*<<< orphan*/  CEC_SIGNAL_FREE_TIME_NEXT_XFER ; 
 int /*<<< orphan*/  CEC_SIGNAL_FREE_TIME_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct meson_ao_cec_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct meson_ao_cec_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_ao_cec_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct cec_adapter *adap, bool enable)
{
	struct meson_ao_cec_device *ao_cec = adap->priv;
	int ret;

	FUNC3(ao_cec, false);

	FUNC5(CEC_GEN_CNTL_RESET, CEC_GEN_CNTL_RESET,
			    ao_cec->base + CEC_GEN_CNTL_REG);

	if (!enable)
		return 0;

	/* Enable gated clock (Normal mode). */
	FUNC5(CEC_GEN_CNTL_CLK_CTRL_MASK,
			    FUNC0(CEC_GEN_CNTL_CLK_CTRL_MASK,
				       CEC_GEN_CNTL_CLK_ENABLE),
			    ao_cec->base + CEC_GEN_CNTL_REG);

	FUNC4(100);

	/* Release Reset */
	FUNC5(CEC_GEN_CNTL_RESET, 0,
			    ao_cec->base + CEC_GEN_CNTL_REG);

	/* Clear buffers */
	ret = FUNC2(ao_cec);
	if (ret)
		return ret;

	/* CEC arbitration 3/5/7 bit time set. */
	ret = FUNC1(ao_cec,
					CEC_SIGNAL_FREE_TIME_RETRY,
					0x118);
	if (ret)
		return ret;
	ret = FUNC1(ao_cec,
					CEC_SIGNAL_FREE_TIME_NEW_INITIATOR,
					0x000);
	if (ret)
		return ret;
	ret = FUNC1(ao_cec,
					CEC_SIGNAL_FREE_TIME_NEXT_XFER,
					0x2aa);
	if (ret)
		return ret;

	FUNC3(ao_cec, true);

	return 0;
}
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
struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct mei_device {int recvd_hw_ready; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int H_CSR_IE_MASK ; 
 int H_CSR_IS_MASK ; 
 int H_IG ; 
 int H_RDY ; 
 int H_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*,int) ; 
 int FUNC4 (struct mei_device*) ; 
 int FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct mei_me_hw* FUNC9 (struct mei_device*) ; 

__attribute__((used)) static int FUNC10(struct mei_device *dev, bool intr_enable)
{
	struct mei_me_hw *hw = FUNC9(dev);
	int ret;
	u32 hcsr;

	if (intr_enable) {
		FUNC7(dev);
		if (hw->d0i3_supported) {
			ret = FUNC5(dev);
			if (ret)
				return ret;
		}
	}

	FUNC8(dev->dev);

	hcsr = FUNC1(dev);
	/* H_RST may be found lit before reset is started,
	 * for example if preceding reset flow hasn't completed.
	 * In that case asserting H_RST will be ignored, therefore
	 * we need to clean H_RST bit to start a successful reset sequence.
	 */
	if ((hcsr & H_RST) == H_RST) {
		FUNC0(dev->dev, "H_RST is set = 0x%08X", hcsr);
		hcsr &= ~H_RST;
		FUNC2(dev, hcsr);
		hcsr = FUNC1(dev);
	}

	hcsr |= H_RST | H_IG | H_CSR_IS_MASK;

	if (!intr_enable)
		hcsr &= ~H_CSR_IE_MASK;

	dev->recvd_hw_ready = false;
	FUNC3(dev, hcsr);

	/*
	 * Host reads the H_CSR once to ensure that the
	 * posted write to H_CSR completes.
	 */
	hcsr = FUNC1(dev);

	if ((hcsr & H_RST) == 0)
		FUNC0(dev->dev, "H_RST is not set = 0x%08X", hcsr);

	if ((hcsr & H_RDY) == H_RDY)
		FUNC0(dev->dev, "H_RDY is not cleared 0x%08X", hcsr);

	if (!intr_enable) {
		FUNC6(dev);
		if (hw->d0i3_supported) {
			ret = FUNC4(dev);
			if (ret)
				return ret;
		}
	}
	return 0;
}
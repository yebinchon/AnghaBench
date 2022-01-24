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
struct ipq806x_gmac {int id; void* qsgmii_csr; void* nss_common; void* core_clk; scalar_t__ phy_mode; TYPE_1__* pdev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct ipq806x_gmac *gmac)
{
	struct device *dev = &gmac->pdev->dev;

	gmac->phy_mode = FUNC6(dev->of_node);
	if ((int)gmac->phy_mode < 0) {
		FUNC4(dev, "missing phy mode property\n");
		return -EINVAL;
	}

	if (FUNC7(dev->of_node, "qcom,id", &gmac->id) < 0) {
		FUNC4(dev, "missing qcom id property\n");
		return -EINVAL;
	}

	/* The GMACs are called 1 to 4 in the documentation, but to simplify the
	 * code and keep it consistent with the Linux convention, we'll number
	 * them from 0 to 3 here.
	 */
	if (gmac->id > 3) {
		FUNC4(dev, "invalid gmac id\n");
		return -EINVAL;
	}

	gmac->core_clk = FUNC5(dev, "stmmaceth");
	if (FUNC0(gmac->core_clk)) {
		FUNC4(dev, "missing stmmaceth clk property\n");
		return FUNC1(gmac->core_clk);
	}
	FUNC3(gmac->core_clk, 266000000);

	/* Setup the register map for the nss common registers */
	gmac->nss_common = FUNC8(dev->of_node,
							   "qcom,nss-common");
	if (FUNC0(gmac->nss_common)) {
		FUNC4(dev, "missing nss-common node\n");
		return FUNC1(gmac->nss_common);
	}

	/* Setup the register map for the qsgmii csr registers */
	gmac->qsgmii_csr = FUNC8(dev->of_node,
							   "qcom,qsgmii-csr");
	if (FUNC0(gmac->qsgmii_csr))
		FUNC4(dev, "missing qsgmii-csr node\n");

	return FUNC2(gmac->qsgmii_csr);
}
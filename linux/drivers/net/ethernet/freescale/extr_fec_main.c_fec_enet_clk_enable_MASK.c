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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct fec_enet_private {int ptp_clk_on; scalar_t__ clk_enet_out; scalar_t__ clk_ref; int /*<<< orphan*/  ptp_clk_mutex; scalar_t__ clk_ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev, bool enable)
{
	struct fec_enet_private *fep = FUNC4(ndev);
	int ret;

	if (enable) {
		ret = FUNC1(fep->clk_enet_out);
		if (ret)
			return ret;

		if (fep->clk_ptp) {
			FUNC2(&fep->ptp_clk_mutex);
			ret = FUNC1(fep->clk_ptp);
			if (ret) {
				FUNC3(&fep->ptp_clk_mutex);
				goto failed_clk_ptp;
			} else {
				fep->ptp_clk_on = true;
			}
			FUNC3(&fep->ptp_clk_mutex);
		}

		ret = FUNC1(fep->clk_ref);
		if (ret)
			goto failed_clk_ref;

		FUNC5(ndev->phydev);
	} else {
		FUNC0(fep->clk_enet_out);
		if (fep->clk_ptp) {
			FUNC2(&fep->ptp_clk_mutex);
			FUNC0(fep->clk_ptp);
			fep->ptp_clk_on = false;
			FUNC3(&fep->ptp_clk_mutex);
		}
		FUNC0(fep->clk_ref);
	}

	return 0;

failed_clk_ref:
	if (fep->clk_ref)
		FUNC0(fep->clk_ref);
failed_clk_ptp:
	if (fep->clk_enet_out)
		FUNC0(fep->clk_enet_out);

	return ret;
}
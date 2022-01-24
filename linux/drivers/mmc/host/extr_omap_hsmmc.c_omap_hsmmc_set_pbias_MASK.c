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
struct omap_hsmmc_host {int pbias_enabled; int /*<<< orphan*/  dev; int /*<<< orphan*/  pbias; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct omap_hsmmc_host *host, bool power_on)
{
	int ret;

	if (FUNC0(host->pbias))
		return 0;

	if (power_on) {
		if (host->pbias_enabled == 0) {
			ret = FUNC3(host->pbias);
			if (ret) {
				FUNC1(host->dev, "pbias reg enable fail\n");
				return ret;
			}
			host->pbias_enabled = 1;
		}
	} else {
		if (host->pbias_enabled == 1) {
			ret = FUNC2(host->pbias);
			if (ret) {
				FUNC1(host->dev, "pbias reg disable fail\n");
				return ret;
			}
			host->pbias_enabled = 0;
		}
	}

	return 0;
}
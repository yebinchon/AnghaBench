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
struct sdhci_omap_host {int pbias_enabled; int /*<<< orphan*/  pbias; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sdhci_omap_host *omap_host,
				bool power_on, unsigned int iov)
{
	int ret;
	struct device *dev = omap_host->dev;

	if (FUNC0(omap_host->pbias))
		return 0;

	if (power_on) {
		ret = FUNC4(omap_host->pbias, iov, iov);
		if (ret) {
			FUNC1(dev, "pbias set voltage failed\n");
			return ret;
		}

		if (omap_host->pbias_enabled)
			return 0;

		ret = FUNC3(omap_host->pbias);
		if (ret) {
			FUNC1(dev, "pbias reg enable fail\n");
			return ret;
		}

		omap_host->pbias_enabled = true;
	} else {
		if (!omap_host->pbias_enabled)
			return 0;

		ret = FUNC2(omap_host->pbias);
		if (ret) {
			FUNC1(dev, "pbias reg disable fail\n");
			return ret;
		}
		omap_host->pbias_enabled = false;
	}

	return 0;
}
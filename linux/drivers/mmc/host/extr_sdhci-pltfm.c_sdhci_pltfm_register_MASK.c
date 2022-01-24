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
struct sdhci_pltfm_data {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 struct sdhci_host* FUNC5 (struct platform_device*,struct sdhci_pltfm_data const*,size_t) ; 

int FUNC6(struct platform_device *pdev,
			const struct sdhci_pltfm_data *pdata,
			size_t priv_size)
{
	struct sdhci_host *host;
	int ret = 0;

	host = FUNC5(pdev, pdata, priv_size);
	if (FUNC0(host))
		return FUNC1(host);

	FUNC3(pdev);

	ret = FUNC2(host);
	if (ret)
		FUNC4(pdev);

	return ret;
}
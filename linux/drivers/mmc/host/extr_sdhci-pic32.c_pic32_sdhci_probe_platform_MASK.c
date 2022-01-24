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
struct sdhci_host {int caps; scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;
struct pic32_sdhci_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ SDHCI_CAPABILITIES ; 
 int SDH_CAPS_SDH_SLOT_TYPE_MASK ; 
 int SDH_SLOT_TYPE_SHARED_BUS ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
				      struct pic32_sdhci_priv *pdata)
{
	int ret = 0;
	u32 caps_slot_type;
	struct sdhci_host *host = FUNC1(pdev);

	/* Check card slot connected on shared bus. */
	host->caps = FUNC2(host->ioaddr + SDHCI_CAPABILITIES);
	caps_slot_type = (host->caps & SDH_CAPS_SDH_SLOT_TYPE_MASK) >> 30;
	if (caps_slot_type == SDH_SLOT_TYPE_SHARED_BUS)
		FUNC0(pdev);

	return ret;
}
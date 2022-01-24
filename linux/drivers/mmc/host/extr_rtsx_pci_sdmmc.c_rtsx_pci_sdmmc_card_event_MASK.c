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
struct realtek_pci_sdmmc {int cookie; int /*<<< orphan*/  mmc; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct realtek_pci_sdmmc* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct realtek_pci_sdmmc *host = FUNC1(pdev);

	host->cookie = -1;
	FUNC0(host->mmc, 0);
}
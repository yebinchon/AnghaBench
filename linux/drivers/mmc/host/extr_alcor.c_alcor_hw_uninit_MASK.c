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
struct alcor_sdmmc_host {struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU6601_DETECT_STATUS ; 
 int /*<<< orphan*/  AU6601_OPT ; 
 int /*<<< orphan*/  AU6601_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  AU6601_POWER_CONTROL ; 
 int AU6601_RESET_CMD ; 
 int AU6601_RESET_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_pci_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct alcor_sdmmc_host *host)
{
	struct alcor_pci_priv *priv = host->alcor_pci;

	FUNC0(host);
	FUNC1(host, AU6601_RESET_CMD | AU6601_RESET_DATA);

	FUNC2(priv, 0, AU6601_DETECT_STATUS);

	FUNC2(priv, 0, AU6601_OUTPUT_ENABLE);
	FUNC2(priv, 0, AU6601_POWER_CONTROL);

	FUNC2(priv, 0, AU6601_OPT);
}
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
struct TYPE_2__ {int /*<<< orphan*/  start_signal_voltage_switch; int /*<<< orphan*/  get_cd; } ;
struct sdhci_host {int timeout_clk; TYPE_1__ mmc_host_ops; int /*<<< orphan*/  mmc; } ;
struct sdhci_acpi_host {struct sdhci_host* host; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CAPABILITIES ; 
 int /*<<< orphan*/  SDHCI_CAPABILITIES_1 ; 
 int /*<<< orphan*/  bxt_get_cd ; 
 int /*<<< orphan*/  FUNC0 (struct intel_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_start_signal_voltage_switch ; 
 struct sdhci_acpi_host* FUNC1 (struct platform_device*) ; 
 struct intel_host* FUNC2 (struct sdhci_acpi_host*) ; 
 int FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev, const char *hid,
			    const char *uid)
{
	struct sdhci_acpi_host *c = FUNC1(pdev);
	struct intel_host *intel_host = FUNC2(c);
	struct sdhci_host *host = c->host;

	if (hid && uid && !FUNC4(hid, "80860F14") && !FUNC4(uid, "1") &&
	    FUNC3(host, SDHCI_CAPABILITIES) == 0x446cc8b2 &&
	    FUNC3(host, SDHCI_CAPABILITIES_1) == 0x00000807)
		host->timeout_clk = 1000; /* 1000 kHz i.e. 1 MHz */

	if (hid && !FUNC4(hid, "80865ACA"))
		host->mmc_host_ops.get_cd = bxt_get_cd;

	FUNC0(intel_host, &pdev->dev, host->mmc);

	host->mmc_host_ops.start_signal_voltage_switch =
					intel_start_signal_voltage_switch;

	return 0;
}
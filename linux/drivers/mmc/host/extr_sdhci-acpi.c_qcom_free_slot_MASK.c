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
struct sdhci_host {int dummy; } ;
struct sdhci_acpi_host {struct sdhci_host* host; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int ENODEV ; 
 char* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct sdhci_host*) ; 
 struct sdhci_acpi_host* FUNC3 (struct platform_device*) ; 
 int* FUNC4 (struct sdhci_acpi_host*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sdhci_acpi_host *c = FUNC3(pdev);
	struct sdhci_host *host = c->host;
	struct acpi_device *adev;
	int *irq = FUNC4(c);
	const char *hid;

	adev = FUNC0(dev);
	if (!adev)
		return -ENODEV;

	hid = FUNC1(adev);
	if (FUNC5(hid, "QCOM8051"))
		return 0;

	if (*irq < 0)
		return 0;

	FUNC2(*irq, host);
	return 0;
}
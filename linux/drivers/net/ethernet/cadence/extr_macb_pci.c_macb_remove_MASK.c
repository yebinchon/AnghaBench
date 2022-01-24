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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
struct macb_platform_data {int /*<<< orphan*/  hclk; int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct macb_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct platform_device *plat_dev = FUNC2(pdev);
	struct macb_platform_data *plat_data = FUNC1(&plat_dev->dev);

	FUNC3(plat_dev);
	FUNC0(plat_data->pclk);
	FUNC0(plat_data->hclk);
}
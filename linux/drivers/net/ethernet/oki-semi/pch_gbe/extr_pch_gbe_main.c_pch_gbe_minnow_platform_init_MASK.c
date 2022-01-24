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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long GPIOF_DIR_OUT ; 
 unsigned long GPIOF_EXPORT ; 
 unsigned long GPIOF_INIT_HIGH ; 
 unsigned int MINNOW_PHY_RESET_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev)
{
	unsigned long flags = GPIOF_DIR_OUT | GPIOF_INIT_HIGH | GPIOF_EXPORT;
	unsigned gpio = MINNOW_PHY_RESET_GPIO;
	int ret;

	ret = FUNC1(&pdev->dev, gpio, flags,
				    "minnow_phy_reset");
	if (ret) {
		FUNC0(&pdev->dev,
			"ERR: Can't request PHY reset GPIO line '%d'\n", gpio);
		return ret;
	}

	FUNC2(gpio, 0);
	FUNC3(1250, 1500);
	FUNC2(gpio, 1);
	FUNC3(1250, 1500);

	return ret;
}
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
struct TYPE_2__ {int dev_count; struct platform_info* ksz_switch; scalar_t__ io; } ;
struct dev_info {int /*<<< orphan*/  pdev; TYPE_1__ hw; } ;
struct platform_info {scalar_t__* netdev; struct dev_info dev_info; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct platform_info* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	int i;
	struct platform_info *info = FUNC5(pdev);
	struct dev_info *hw_priv = &info->dev_info;

	FUNC8(FUNC7(pdev, 0),
		FUNC6(pdev, 0));
	for (i = 0; i < hw_priv->hw.dev_count; i++) {
		if (info->netdev[i])
			FUNC3(info->netdev[i]);
	}
	if (hw_priv->hw.io)
		FUNC0(hw_priv->hw.io);
	FUNC2(hw_priv);
	FUNC1(hw_priv->hw.ksz_switch);
	FUNC4(hw_priv->pdev);
	FUNC1(info);
}
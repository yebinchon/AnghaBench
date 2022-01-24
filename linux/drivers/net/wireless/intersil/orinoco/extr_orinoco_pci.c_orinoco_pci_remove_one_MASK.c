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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  iobase; } ;
struct orinoco_private {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct orinoco_private* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct orinoco_private *priv = FUNC4(pdev);

	FUNC2(priv);
	FUNC8(FUNC7(priv));
	FUNC0(pdev->irq, priv);
	FUNC1(priv);
	FUNC5(pdev, priv->hw.iobase);
	FUNC6(pdev);
	FUNC3(pdev);
}
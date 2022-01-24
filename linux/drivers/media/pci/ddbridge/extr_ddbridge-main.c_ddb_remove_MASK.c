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
struct pci_dev {int dummy; } ;
struct ddb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC6 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC7 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct ddb *dev = (struct ddb *)FUNC9(pdev);

	FUNC1(dev);
	FUNC5(dev);
	FUNC2(dev);

	FUNC3(dev);
	FUNC4(dev);
	FUNC6(dev);
	FUNC0(dev);

	FUNC7(dev);
	FUNC10(pdev, NULL);
	FUNC8(pdev);
}
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
struct rvu {struct rvu* hw; int /*<<< orphan*/  afpf_wq_info; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rvu*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct rvu* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC8 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC11 (struct rvu*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct rvu *rvu = FUNC2(pdev);

	FUNC11(rvu);
	FUNC7(rvu);
	FUNC5(rvu);
	FUNC9(&rvu->afpf_wq_info);
	FUNC6(rvu);
	FUNC10(rvu);
	FUNC8(rvu);

	FUNC3(pdev);
	FUNC1(pdev);
	FUNC4(pdev, NULL);

	FUNC0(&pdev->dev, rvu->hw);
	FUNC0(&pdev->dev, rvu);
}
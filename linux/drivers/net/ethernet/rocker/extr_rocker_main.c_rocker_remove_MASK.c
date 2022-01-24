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
struct rocker {int /*<<< orphan*/  pdev; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  rocker_owq; int /*<<< orphan*/  fib_nb; } ;
struct pci_dev {int dummy; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  ROCKER_CONTROL_RESET ; 
 int /*<<< orphan*/  ROCKER_MSIX_VEC_CMD ; 
 int /*<<< orphan*/  ROCKER_MSIX_VEC_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rocker*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct rocker* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC9 (struct rocker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rocker*) ; 
 struct notifier_block rocker_switchdev_blocking_notifier ; 
 int /*<<< orphan*/  rocker_switchdev_notifier ; 
 int /*<<< orphan*/  FUNC11 (struct rocker*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct rocker *rocker = FUNC5(pdev);
	struct notifier_block *nb;

	nb = &rocker_switchdev_blocking_notifier;
	FUNC13(nb);

	FUNC14(&rocker_switchdev_notifier);
	FUNC12(&rocker->fib_nb);
	FUNC10(rocker);
	FUNC11(rocker, CONTROL, ROCKER_CONTROL_RESET);
	FUNC0(rocker->rocker_owq);
	FUNC1(FUNC9(rocker, ROCKER_MSIX_VEC_EVENT), rocker);
	FUNC1(FUNC9(rocker, ROCKER_MSIX_VEC_CMD), rocker);
	FUNC7(rocker);
	FUNC8(rocker);
	FUNC2(rocker->hw_addr);
	FUNC6(rocker->pdev);
	FUNC4(rocker->pdev);
	FUNC3(rocker);
}
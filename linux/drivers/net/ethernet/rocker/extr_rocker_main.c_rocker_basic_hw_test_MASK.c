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
struct rocker_wait {int dummy; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  ROCKER_MSIX_VEC_TEST ; 
 int /*<<< orphan*/  TEST_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rocker_wait*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rocker_wait*) ; 
 int FUNC3 (struct rocker const*,struct rocker_wait*) ; 
 int /*<<< orphan*/  rocker_driver_name ; 
 int /*<<< orphan*/  FUNC4 (struct rocker const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rocker const*) ; 
 int /*<<< orphan*/  rocker_test_irq_handler ; 
 int /*<<< orphan*/  FUNC6 (struct rocker_wait*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rocker_wait*) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const struct rocker *rocker)
{
	const struct pci_dev *pdev = rocker->pdev;
	struct rocker_wait wait;
	int err;

	err = FUNC5(rocker);
	if (err) {
		FUNC0(&pdev->dev, "reg test failed\n");
		return err;
	}

	err = FUNC2(FUNC4(rocker, ROCKER_MSIX_VEC_TEST),
			  rocker_test_irq_handler, 0,
			  rocker_driver_name, &wait);
	if (err) {
		FUNC0(&pdev->dev, "cannot assign test irq\n");
		return err;
	}

	FUNC7(&wait);
	FUNC8(rocker, TEST_IRQ, ROCKER_MSIX_VEC_TEST);

	if (!FUNC6(&wait, HZ / 10)) {
		FUNC0(&pdev->dev, "no interrupt received within a timeout\n");
		err = -EIO;
		goto free_irq;
	}

	err = FUNC3(rocker, &wait);
	if (err)
		FUNC0(&pdev->dev, "dma test failed\n");

free_irq:
	FUNC1(FUNC4(rocker, ROCKER_MSIX_VEC_TEST), &wait);
	return err;
}
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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  VSC_COUNTER_OFFSET ; 
 int VSC_MAX_RETRIES ; 
 int /*<<< orphan*/  VSC_SEMAPHORE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC5(struct mlx5_core_dev *dev)
{
	u32 counter = 0;
	int retries = 0;
	u32 lock_val;
	int ret;

	FUNC0(dev->pdev);
	do {
		if (retries > VSC_MAX_RETRIES) {
			ret = -EBUSY;
			goto pci_unlock;
		}

		/* Check if semaphore is already locked */
		ret = FUNC3(dev, VSC_SEMAPHORE_OFFSET, &lock_val);
		if (ret)
			goto pci_unlock;

		if (lock_val) {
			retries++;
			FUNC2(1000, 2000);
			continue;
		}

		/* Read and write counter value, if written value is
		 * the same, semaphore was acquired successfully.
		 */
		ret = FUNC3(dev, VSC_COUNTER_OFFSET, &counter);
		if (ret)
			goto pci_unlock;

		ret = FUNC4(dev, VSC_SEMAPHORE_OFFSET, counter);
		if (ret)
			goto pci_unlock;

		ret = FUNC3(dev, VSC_SEMAPHORE_OFFSET, &lock_val);
		if (ret)
			goto pci_unlock;

		retries++;
	} while (counter != lock_val);

	return 0;

pci_unlock:
	FUNC1(dev->pdev);
	return ret;
}
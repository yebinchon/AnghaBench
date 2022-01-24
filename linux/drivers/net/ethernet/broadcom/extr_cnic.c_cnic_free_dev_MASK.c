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
struct cnic_dev {int /*<<< orphan*/  netdev; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct cnic_dev *dev)
{
	int i = 0;

	while ((FUNC0(&dev->ref_count) != 0) && i < 10) {
		FUNC3(100);
		i++;
	}
	if (FUNC0(&dev->ref_count) != 0)
		FUNC4(dev->netdev, "Failed waiting for ref count to go to zero\n");

	FUNC5(dev->netdev, "Removed CNIC device\n");
	FUNC1(dev->netdev);
	FUNC2(dev);
}
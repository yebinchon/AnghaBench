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
struct qed_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,char*) ; 
 int EIO ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev)
{
	struct device *dev = &cdev->pdev->dev;

	if (FUNC3(dev, FUNC0(64)) == 0) {
		if (FUNC2(dev, FUNC0(64)) != 0) {
			FUNC1(cdev,
				  "Can't request 64-bit consistent allocations\n");
			return -EIO;
		}
	} else if (FUNC3(dev, FUNC0(32)) != 0) {
		FUNC1(cdev, "Can't request 64b/32b DMA addresses\n");
		return -EIO;
	}

	return 0;
}
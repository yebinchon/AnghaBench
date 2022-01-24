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
struct s5p_mfc_dev {TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_mfc_dev*) ; 

__attribute__((used)) static void FUNC5(struct s5p_mfc_dev *mfc_dev)
{
	struct device *dev = &mfc_dev->plat_dev->dev;

	FUNC2(mfc_dev);
	if (FUNC1(dev) || !FUNC0(mfc_dev))
		FUNC4(mfc_dev);
	else
		FUNC3(mfc_dev);
}
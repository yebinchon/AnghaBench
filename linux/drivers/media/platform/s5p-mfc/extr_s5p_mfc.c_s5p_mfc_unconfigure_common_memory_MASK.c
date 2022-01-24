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
struct s5p_mfc_dev {int /*<<< orphan*/  mem_bitmap; int /*<<< orphan*/  mem_base; int /*<<< orphan*/  mem_virt; int /*<<< orphan*/  mem_size; TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct s5p_mfc_dev *mfc_dev)
{
	struct device *dev = &mfc_dev->plat_dev->dev;

	FUNC0(dev, mfc_dev->mem_size, mfc_dev->mem_virt,
			  mfc_dev->mem_base);
	FUNC1(mfc_dev->mem_bitmap);
	FUNC2(dev);
}
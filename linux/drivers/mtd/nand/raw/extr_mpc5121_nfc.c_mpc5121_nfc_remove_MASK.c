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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 struct mtd_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *op)
{
	struct device *dev = &op->dev;
	struct mtd_info *mtd = FUNC0(dev);

	FUNC3(FUNC2(mtd));
	FUNC1(dev, mtd);

	return 0;
}
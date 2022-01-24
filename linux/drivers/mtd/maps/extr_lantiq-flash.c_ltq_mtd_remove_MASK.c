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
struct platform_device {int dummy; } ;
struct ltq_mtd {scalar_t__ mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ltq_mtd* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int
FUNC3(struct platform_device *pdev)
{
	struct ltq_mtd *ltq_mtd = FUNC2(pdev);

	if (ltq_mtd && ltq_mtd->mtd) {
		FUNC1(ltq_mtd->mtd);
		FUNC0(ltq_mtd->mtd);
	}
	return 0;
}
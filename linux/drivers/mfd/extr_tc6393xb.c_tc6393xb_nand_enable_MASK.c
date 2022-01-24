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
struct tc6393xb {int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct tc6393xb* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *nand)
{
	struct tc6393xb *tc6393xb = FUNC2(nand->dev.parent);
	unsigned long flags;

	FUNC3(&tc6393xb->lock, flags);

	/* SMD buffer on */
	FUNC1(nand->dev.parent, "SMD buffer on\n");
	FUNC5(0xff, tc6393xb->scr + FUNC0(1));

	FUNC4(&tc6393xb->lock, flags);

	return 0;
}
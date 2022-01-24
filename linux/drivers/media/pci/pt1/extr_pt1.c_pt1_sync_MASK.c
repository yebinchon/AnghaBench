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
struct pt1 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct pt1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt1*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct pt1 *pt1)
{
	int i;
	for (i = 0; i < 57; i++) {
		if (FUNC1(pt1, 0) & 0x20000000)
			return 0;
		FUNC2(pt1, 0, 0x00000008);
	}
	FUNC0(&pt1->pdev->dev, "could not sync\n");
	return -EIO;
}
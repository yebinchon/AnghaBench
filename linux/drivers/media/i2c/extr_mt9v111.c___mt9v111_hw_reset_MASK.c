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
struct mt9v111_dev {int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct mt9v111_dev *mt9v111)
{
	if (!mt9v111->reset)
		return -EINVAL;

	FUNC0(mt9v111->reset, 1);
	FUNC1(500, 1000);

	FUNC0(mt9v111->reset, 0);
	FUNC1(500, 1000);

	return 0;
}
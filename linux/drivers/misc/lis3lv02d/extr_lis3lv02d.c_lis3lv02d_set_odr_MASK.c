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
typedef  int u8 ;
struct lis3lv02d {int odr_mask; int* odrs; int /*<<< orphan*/  (* write ) (struct lis3lv02d*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* read ) (struct lis3lv02d*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_REG1 ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lis3lv02d*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct lis3lv02d *lis3, int rate)
{
	u8 ctrl;
	int i, len, shift;

	if (!rate)
		return -EINVAL;

	lis3->read(lis3, CTRL_REG1, &ctrl);
	ctrl &= ~lis3->odr_mask;
	len = 1 << FUNC1(lis3->odr_mask); /* # of possible values */
	shift = FUNC0(lis3->odr_mask) - 1;

	for (i = 0; i < len; i++)
		if (lis3->odrs[i] == rate) {
			lis3->write(lis3, CTRL_REG1,
					ctrl | (i << shift));
			return 0;
		}
	return -EINVAL;
}
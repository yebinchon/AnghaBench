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
struct lis3lv02d {int odr_mask; int* odrs; int /*<<< orphan*/  (* read ) (struct lis3lv02d*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_REG1 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lis3lv02d*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct lis3lv02d *lis3)
{
	u8 ctrl;
	int shift;

	lis3->read(lis3, CTRL_REG1, &ctrl);
	ctrl &= lis3->odr_mask;
	shift = FUNC0(lis3->odr_mask) - 1;
	return lis3->odrs[(ctrl >> shift)];
}
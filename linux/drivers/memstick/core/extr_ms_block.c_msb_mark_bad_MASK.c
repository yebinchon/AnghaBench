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
struct msb_data {int dummy; } ;

/* Variables and functions */
 int MEMSTICK_OVERWRITE_BKST ; 
 int /*<<< orphan*/  FUNC0 (struct msb_data*,int) ; 
 int FUNC1 (struct msb_data*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct msb_data *msb, int pba)
{
	FUNC2("marking pba %d as bad", pba);
	FUNC0(msb, true);
	return FUNC1(
			msb, pba, 0, 0xFF & ~MEMSTICK_OVERWRITE_BKST);
}
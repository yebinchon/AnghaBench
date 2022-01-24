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
struct genwqe_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_SLC_MISC_DEBUG_SET ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct genwqe_dev *cd)
{
	FUNC0(cd, IO_SLC_MISC_DEBUG_SET, 0xcull);
}
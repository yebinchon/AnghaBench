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
typedef  int u64 ;
typedef  int u32 ;
struct genwqe_dev {int dummy; } ;

/* Variables and functions */
 unsigned long GENWQE_PF_JOBTIMEOUT_MSEC ; 
 int /*<<< orphan*/  IO_SLC_VF_APPJOB_TIMEOUT ; 
 int FUNC0 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct genwqe_dev *cd)
{
	u32 T = FUNC0(cd);
	u64 x;

	if (GENWQE_PF_JOBTIMEOUT_MSEC == 0)
		return false;

	/* PF: large value needed, flash update 2sec per block */
	x = FUNC2(GENWQE_PF_JOBTIMEOUT_MSEC *
		  16000000000uL/(T * 15)) - 10;

	FUNC1(cd, IO_SLC_VF_APPJOB_TIMEOUT,
			  0xff00 | (x & 0xff), 0);
	return true;
}
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
typedef  int u32 ;
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct solo_dev {int dummy; } ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  SOLO_TIMER_SEC ; 
 int /*<<< orphan*/  SOLO_TIMER_USEC ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct solo_dev *solo_dev)
{
	struct timespec64 ts;

	FUNC0(&ts);

	/* no overflow because we use monotonic timestamps */
	FUNC1(solo_dev, SOLO_TIMER_SEC, (u32)ts.tv_sec);
	FUNC1(solo_dev, SOLO_TIMER_USEC, (u32)ts.tv_nsec / NSEC_PER_USEC);
}
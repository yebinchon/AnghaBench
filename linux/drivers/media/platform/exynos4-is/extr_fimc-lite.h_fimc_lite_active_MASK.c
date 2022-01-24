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
struct fimc_lite {int state; int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int ST_FLITE_PENDING ; 
 int ST_FLITE_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline bool FUNC2(struct fimc_lite *fimc)
{
	unsigned long flags;
	bool ret;

	FUNC0(&fimc->slock, flags);
	ret = fimc->state & (1 << ST_FLITE_RUN) ||
		fimc->state & (1 << ST_FLITE_PENDING);
	FUNC1(&fimc->slock, flags);
	return ret;
}
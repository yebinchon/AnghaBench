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
struct TYPE_2__ {int ithena; } ;
union cvmx_mixx_intena {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct octeon_mgmt {int /*<<< orphan*/  lock; scalar_t__ mix; } ;

/* Variables and functions */
 scalar_t__ MIX_INTENA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct octeon_mgmt *p, int enable)
{
	union cvmx_mixx_intena mix_intena;
	unsigned long flags;

	FUNC2(&p->lock, flags);
	mix_intena.u64 = FUNC0(p->mix + MIX_INTENA);
	mix_intena.s.ithena = enable ? 1 : 0;
	FUNC1(p->mix + MIX_INTENA, mix_intena.u64);
	FUNC3(&p->lock, flags);
}
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
struct TYPE_2__ {int reset; scalar_t__ busy; } ;
union cvmx_mixx_ctl {void* u64; TYPE_1__ s; } ;
union cvmx_mixx_bist {void* u64; } ;
union cvmx_agl_gmx_bist {void* u64; } ;
struct octeon_mgmt {int /*<<< orphan*/  dev; scalar_t__ mix; } ;

/* Variables and functions */
 scalar_t__ CVMX_AGL_GMX_BIST ; 
 scalar_t__ MIX_BIST ; 
 scalar_t__ MIX_CTL ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct octeon_mgmt *p)
{
	union cvmx_mixx_ctl mix_ctl;
	union cvmx_mixx_bist mix_bist;
	union cvmx_agl_gmx_bist agl_gmx_bist;

	mix_ctl.u64 = 0;
	FUNC1(p->mix + MIX_CTL, mix_ctl.u64);
	do {
		mix_ctl.u64 = FUNC0(p->mix + MIX_CTL);
	} while (mix_ctl.s.busy);
	mix_ctl.s.reset = 1;
	FUNC1(p->mix + MIX_CTL, mix_ctl.u64);
	FUNC0(p->mix + MIX_CTL);
	FUNC3(64);

	mix_bist.u64 = FUNC0(p->mix + MIX_BIST);
	if (mix_bist.u64)
		FUNC2(p->dev, "MIX failed BIST (0x%016llx)\n",
			(unsigned long long)mix_bist.u64);

	agl_gmx_bist.u64 = FUNC0(CVMX_AGL_GMX_BIST);
	if (agl_gmx_bist.u64)
		FUNC2(p->dev, "AGL failed BIST (0x%016llx)\n",
			 (unsigned long long)agl_gmx_bist.u64);
}
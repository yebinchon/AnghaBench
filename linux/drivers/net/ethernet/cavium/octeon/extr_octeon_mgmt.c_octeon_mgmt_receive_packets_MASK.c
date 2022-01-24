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
struct TYPE_2__ {scalar_t__ ircnt; } ;
union cvmx_mixx_ircnt {void* u64; TYPE_1__ s; } ;
struct octeon_mgmt {int /*<<< orphan*/  netdev; scalar_t__ mix; } ;

/* Variables and functions */
 scalar_t__ MIX_IRCNT ; 
 void* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct octeon_mgmt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct octeon_mgmt *p, int budget)
{
	unsigned int work_done = 0;
	union cvmx_mixx_ircnt mix_ircnt;
	int rc;

	mix_ircnt.u64 = FUNC0(p->mix + MIX_IRCNT);
	while (work_done < budget && mix_ircnt.s.ircnt) {

		rc = FUNC1(p);
		if (!rc)
			work_done++;

		/* Check for more packets. */
		mix_ircnt.u64 = FUNC0(p->mix + MIX_IRCNT);
	}

	FUNC2(p->netdev);

	return work_done;
}
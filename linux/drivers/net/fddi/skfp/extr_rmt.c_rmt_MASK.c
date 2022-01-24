#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* m; } ;
struct s_smc {TYPE_1__ mib; } ;
struct TYPE_4__ {int fddiMACRMTState; } ;

/* Variables and functions */
 int AFLAG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MAC0 ; 
 int /*<<< orphan*/ * rmt_events ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,int) ; 
 int /*<<< orphan*/ * rmt_states ; 

void FUNC3(struct s_smc *smc, int event)
{
	int	state ;

	do {
		FUNC0("RMT : state %s%s event %s",
		       smc->mib.m[MAC0].fddiMACRMTState & AFLAG ? "ACTIONS " : "",
		       rmt_states[smc->mib.m[MAC0].fddiMACRMTState & ~AFLAG],
		       rmt_events[event]);
		state = smc->mib.m[MAC0].fddiMACRMTState ;
		FUNC1(smc,event) ;
		event = 0 ;
	} while (state != smc->mib.m[MAC0].fddiMACRMTState) ;
	FUNC2(smc,(int)smc->mib.m[MAC0].fddiMACRMTState) ;
}
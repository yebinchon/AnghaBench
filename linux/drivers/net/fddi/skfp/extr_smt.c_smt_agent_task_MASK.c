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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_2__ {int /*<<< orphan*/  smt_timer; } ;
struct s_smc {TYPE_1__ sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EVENT_SMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_TIMER ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct s_smc *smc)
{
	FUNC2(smc,&smc->sm.smt_timer, (u_long)1000000L,
		FUNC1(EVENT_SMT,SM_TIMER)) ;
	FUNC0("SMT agent task");
}
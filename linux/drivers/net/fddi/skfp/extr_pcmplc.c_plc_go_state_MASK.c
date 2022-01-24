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
struct s_smc {int dummy; } ;
typedef  scalar_t__ HW_PTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL_CNTRL_B ; 
 int PL_MAINT ; 
 int PL_PCM_CNTRL ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct s_smc *smc, int p, int state)
{
	HW_PTR port ;
	int val ;

	FUNC1(smc) ;

	port = (HW_PTR) (FUNC0(p,PL_CNTRL_B)) ;
	val = FUNC2(port) & ~(PL_PCM_CNTRL | PL_MAINT) ;
	FUNC3(port,val) ;
	FUNC3(port,val | state) ;
}
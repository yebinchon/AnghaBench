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
struct timer_list {int dummy; } ;
struct ice_pf {scalar_t__ serv_tmr_period; int /*<<< orphan*/  serv_tmr; } ;

/* Variables and functions */
 struct ice_pf* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_pf*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ice_pf* pf ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  serv_tmr ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct ice_pf *pf = FUNC0(pf, t, serv_tmr);

	FUNC2(&pf->serv_tmr, FUNC3(pf->serv_tmr_period + jiffies));
	FUNC1(pf);
}
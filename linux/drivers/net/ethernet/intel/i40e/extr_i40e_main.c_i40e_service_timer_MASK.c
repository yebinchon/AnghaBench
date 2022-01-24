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
struct i40e_pf {scalar_t__ service_timer_period; int /*<<< orphan*/  service_timer; } ;

/* Variables and functions */
 struct i40e_pf* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct i40e_pf* pf ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  service_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct i40e_pf *pf = FUNC0(pf, t, service_timer);

	FUNC2(&pf->service_timer,
		  FUNC3(jiffies + pf->service_timer_period));
	FUNC1(pf);
}
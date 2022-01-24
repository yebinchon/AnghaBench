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
struct i40e_pf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*,int,int) ; 
 int FUNC1 (struct i40e_pf*,int,int) ; 

int FUNC2(struct i40e_pf *pf, int pf_q, bool enable)
{
	int ret = 0;

	FUNC0(pf, pf_q, enable);

	/* wait for the change to finish */
	ret = FUNC1(pf, pf_q, enable);
	if (ret)
		return ret;

	return ret;
}
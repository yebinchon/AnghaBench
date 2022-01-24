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
typedef  scalar_t__ u32 ;
struct i40e_pf {scalar_t__ fdir_pf_active_filters; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i40e_pf*) ; 

u32 FUNC1(struct i40e_pf *pf)
{
	return FUNC0(pf) - pf->fdir_pf_active_filters;
}
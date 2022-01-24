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
struct i40e_vsi {int dummy; } ;
struct i40e_pf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_VSI_FDIR ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*) ; 
 struct i40e_vsi* FUNC1 (struct i40e_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 

__attribute__((used)) static void FUNC3(struct i40e_pf *pf)
{
	struct i40e_vsi *vsi;

	FUNC0(pf);
	vsi = FUNC1(pf, I40E_VSI_FDIR);
	if (vsi)
		FUNC2(vsi);
}
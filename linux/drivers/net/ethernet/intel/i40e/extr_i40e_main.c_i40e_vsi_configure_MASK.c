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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 
 int FUNC3 (struct i40e_vsi*) ; 
 int FUNC4 (struct i40e_vsi*) ; 

__attribute__((used)) static int FUNC5(struct i40e_vsi *vsi)
{
	int err;

	FUNC1(vsi);
	FUNC0(vsi);
	FUNC2(vsi);
	err = FUNC4(vsi);
	if (!err)
		err = FUNC3(vsi);

	return err;
}
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
 int FUNC0 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*,int,int) ; 
 int FUNC5 (struct i40e_vsi*,int,int) ; 

int FUNC6(struct i40e_vsi *vsi, int queue_pair)
{
	int err;

	err = FUNC0(vsi);
	if (err)
		return err;

	FUNC2(vsi, queue_pair);
	err = FUNC5(vsi, queue_pair, false /* off */);
	FUNC4(vsi, queue_pair, false /* off */);
	FUNC1(vsi, queue_pair);
	FUNC3(vsi, queue_pair);

	return err;
}
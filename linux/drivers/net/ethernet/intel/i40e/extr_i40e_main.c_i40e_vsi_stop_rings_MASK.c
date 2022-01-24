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
struct i40e_vsi {TYPE_1__* back; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __I40E_PORT_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*,int) ; 
 void FUNC2 (struct i40e_vsi*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct i40e_vsi *vsi)
{
	/* When port TX is suspended, don't wait */
	if (FUNC3(__I40E_PORT_SUSPENDED, vsi->back->state))
		return FUNC2(vsi);

	/* do rx first for enable and last for disable
	 * Ignore return value, we need to shutdown whatever we can
	 */
	FUNC1(vsi, false);
	FUNC0(vsi, false);
}
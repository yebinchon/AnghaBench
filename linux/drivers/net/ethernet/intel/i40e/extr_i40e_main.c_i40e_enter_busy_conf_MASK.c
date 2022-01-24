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
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  __I40E_CONFIG_BUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = vsi->back;
	int timeout = 50;

	while (FUNC0(__I40E_CONFIG_BUSY, pf->state)) {
		timeout--;
		if (!timeout)
			return -EBUSY;
		FUNC1(1000, 2000);
	}

	return 0;
}
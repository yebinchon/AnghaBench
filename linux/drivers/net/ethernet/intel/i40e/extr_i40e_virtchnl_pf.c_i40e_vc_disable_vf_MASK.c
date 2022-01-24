#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i40e_vf {int /*<<< orphan*/  vf_id; TYPE_2__* pf; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i40e_vf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static inline void FUNC4(struct i40e_vf *vf)
{
	int i;

	FUNC2(vf);

	/* We want to ensure that an actual reset occurs initiated after this
	 * function was called. However, we do not want to wait forever, so
	 * we'll give a reasonable time and print a message if we failed to
	 * ensure a reset.
	 */
	for (i = 0; i < 20; i++) {
		if (FUNC1(vf, false))
			return;
		FUNC3(10000, 20000);
	}

	FUNC0(&vf->pf->pdev->dev,
		 "Failed to initiate reset for VF %d after 200 milliseconds\n",
		 vf->vf_id);
}
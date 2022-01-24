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
struct nicpf {int* vf_enabled; int num_vf_en; int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct nicpf *nic, int vf, bool enable)
{
	int bgx, lmac;

	nic->vf_enabled[vf] = enable;

	if (vf >= nic->num_vf_en)
		return;

	bgx = FUNC0(nic->vf_lmac_map[vf]);
	lmac = FUNC1(nic->vf_lmac_map[vf]);

	FUNC2(nic->node, bgx, lmac, enable);
}
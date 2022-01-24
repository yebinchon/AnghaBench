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
typedef  int /*<<< orphan*/  u32 ;
struct mtk_smi_larb_gen {int* port_in_larb; } ;
struct mtk_smi_larb {size_t larbid; int* mmu; struct device* smi_common_dev; struct mtk_smi_larb_gen* larb_gen; } ;
struct mtk_smi {scalar_t__ smi_ao_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct device *dev)
{
	struct mtk_smi_larb *larb = FUNC5(dev);
	const struct mtk_smi_larb_gen *larb_gen = larb->larb_gen;
	struct mtk_smi *common = FUNC5(larb->smi_common_dev);
	int i, m4u_port_id, larb_port_num;
	u32 sec_con_val, reg_val;

	m4u_port_id = larb_gen->port_in_larb[larb->larbid];
	larb_port_num = larb_gen->port_in_larb[larb->larbid + 1]
			- larb_gen->port_in_larb[larb->larbid];

	for (i = 0; i < larb_port_num; i++, m4u_port_id++) {
		if (*larb->mmu & FUNC0(i)) {
			/* bit[port + 3] controls the virtual or physical */
			sec_con_val = FUNC4(m4u_port_id);
		} else {
			/* do not need to enable m4u for this port */
			continue;
		}
		reg_val = FUNC6(common->smi_ao_base
			+ FUNC1(m4u_port_id));
		reg_val &= FUNC3(m4u_port_id);
		reg_val |= sec_con_val;
		reg_val |= FUNC2(m4u_port_id);
		FUNC7(reg_val,
			common->smi_ao_base
			+ FUNC1(m4u_port_id));
	}
}
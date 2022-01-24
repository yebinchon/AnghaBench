#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dcbx_results {int dummy; } ;
typedef  enum qed_pci_personality { ____Placeholder_qed_pci_personality } qed_pci_personality ;
typedef  enum dcbx_protocol_type { ____Placeholder_dcbx_protocol_type } dcbx_protocol_type ;
struct TYPE_3__ {int id; int personality; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* qed_dcbx_app_update ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dcbx_results*,struct qed_hwfn*,struct qed_ptt*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct qed_dcbx_results *p_data,
			 struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
			 bool app_tlv, bool enable, u8 prio, u8 tc,
			 enum dcbx_protocol_type type)
{
	enum qed_pci_personality personality;
	enum dcbx_protocol_type id;
	int i;

	for (i = 0; i < FUNC0(qed_dcbx_app_update); i++) {
		id = qed_dcbx_app_update[i].id;

		if (type != id)
			continue;

		personality = qed_dcbx_app_update[i].personality;

		FUNC1(p_data, p_hwfn, p_ptt, app_tlv, enable,
				    prio, tc, type, personality);
	}
}
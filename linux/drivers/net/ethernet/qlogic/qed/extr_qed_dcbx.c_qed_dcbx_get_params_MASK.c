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
struct qed_hwfn {int dummy; } ;
struct qed_dcbx_get {int dummy; } ;
typedef  enum qed_mib_read_type { ____Placeholder_qed_mib_read_type } qed_mib_read_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int EINVAL ; 
#define  QED_DCBX_LOCAL_LLDP_MIB 132 
#define  QED_DCBX_LOCAL_MIB 131 
#define  QED_DCBX_OPERATIONAL_MIB 130 
#define  QED_DCBX_REMOTE_LLDP_MIB 129 
#define  QED_DCBX_REMOTE_MIB 128 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_dcbx_get*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_dcbx_get*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_dcbx_get*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_dcbx_get*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_dcbx_get*) ; 

__attribute__((used)) static int
FUNC6(struct qed_hwfn *p_hwfn, struct qed_dcbx_get *p_params,
		    enum qed_mib_read_type type)
{
	switch (type) {
	case QED_DCBX_REMOTE_MIB:
		FUNC5(p_hwfn, p_params);
		break;
	case QED_DCBX_LOCAL_MIB:
		FUNC2(p_hwfn, p_params);
		break;
	case QED_DCBX_OPERATIONAL_MIB:
		FUNC3(p_hwfn, p_params);
		break;
	case QED_DCBX_REMOTE_LLDP_MIB:
		FUNC4(p_hwfn, p_params);
		break;
	case QED_DCBX_LOCAL_LLDP_MIB:
		FUNC1(p_hwfn, p_params);
		break;
	default:
		FUNC0(p_hwfn, "MIB read err, unknown mib type %d\n", type);
		return -EINVAL;
	}

	return 0;
}
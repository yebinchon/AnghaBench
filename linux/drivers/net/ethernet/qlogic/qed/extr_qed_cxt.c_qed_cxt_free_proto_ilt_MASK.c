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
struct qed_hwfn {int dummy; } ;
typedef  enum protocol_type { ____Placeholder_protocol_type } protocol_type ;

/* Variables and functions */
 int PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  QED_ELEM_CXT ; 
 int /*<<< orphan*/  QED_ELEM_SRQ ; 
 int /*<<< orphan*/  QED_ELEM_TASK ; 
 int FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*) ; 

int FUNC5(struct qed_hwfn *p_hwfn, enum protocol_type proto)
{
	int rc;
	u32 cid;

	/* Free Connection CXT */
	rc = FUNC0(p_hwfn, QED_ELEM_CXT,
				    FUNC2(p_hwfn,
								proto),
				    FUNC1(p_hwfn,
								proto, &cid));

	if (rc)
		return rc;

	/* Free Task CXT ( Intentionally RoCE as task-id is shared between
	 * RoCE and iWARP )
	 */
	proto = PROTOCOLID_ROCE;
	rc = FUNC0(p_hwfn, QED_ELEM_TASK, 0,
				    FUNC3(p_hwfn, proto));
	if (rc)
		return rc;

	/* Free TSDM CXT */
	rc = FUNC0(p_hwfn, QED_ELEM_SRQ, 0,
				    FUNC4(p_hwfn));

	return rc;
}
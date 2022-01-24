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
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef  enum qed_resources { ____Placeholder_qed_resources } qed_resources ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FW_MSG_CODE_RESOURCE_ALLOC_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(struct qed_hwfn *p_hwfn,
			    struct qed_ptt *p_ptt,
			    enum qed_resources res_id,
			    u32 resc_max_val, u32 *p_mcp_resp)
{
	int rc;

	rc = FUNC3(p_hwfn, p_ptt, res_id,
				      resc_max_val, p_mcp_resp);
	if (rc) {
		FUNC1(p_hwfn,
			  "MFW response failure for a max value setting of resource %d [%s]\n",
			  res_id, FUNC2(res_id));
		return rc;
	}

	if (*p_mcp_resp != FW_MSG_CODE_RESOURCE_ALLOC_OK)
		FUNC0(p_hwfn,
			"Failed to set the max value of resource %d [%s]. mcp_resp = 0x%08x.\n",
			res_id, FUNC2(res_id), *p_mcp_resp);

	return 0;
}
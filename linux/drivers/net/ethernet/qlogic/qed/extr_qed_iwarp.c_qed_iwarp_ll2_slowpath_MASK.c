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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct unaligned_opaque_data {scalar_t__ cid; } ;
struct qed_iwarp_fpdu {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC1 (struct qed_iwarp_fpdu*,int /*<<< orphan*/ ,int) ; 
 struct qed_iwarp_fpdu* FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct unaligned_opaque_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *cxt,
		       u8 connection_handle,
		       u32 opaque_data_0, u32 opaque_data_1)
{
	struct unaligned_opaque_data unalign_data;
	struct qed_hwfn *p_hwfn = cxt;
	struct qed_iwarp_fpdu *fpdu;

	FUNC3(p_hwfn, &unalign_data,
			       opaque_data_0, opaque_data_1);

	FUNC0(p_hwfn, QED_MSG_RDMA, "(0x%x) Flush fpdu\n",
		   unalign_data.cid);

	fpdu = FUNC2(p_hwfn, (u16)unalign_data.cid);
	if (fpdu)
		FUNC1(fpdu, 0, sizeof(*fpdu));
}
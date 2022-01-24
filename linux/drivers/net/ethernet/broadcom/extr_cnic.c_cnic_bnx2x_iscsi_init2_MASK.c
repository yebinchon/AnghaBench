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
struct kwqe {int dummy; } ;
struct kcqe {int dummy; } ;
struct iscsi_kwqe_init2 {int /*<<< orphan*/  max_cq_sqn; int /*<<< orphan*/ * error_bit_map; } ;
struct iscsi_kcqe {int /*<<< orphan*/  op_code; int /*<<< orphan*/  completion_status; } ;
struct cnic_dev {int /*<<< orphan*/  max_iscsi_conn; int /*<<< orphan*/  netdev; } ;
struct bnx2x {int /*<<< orphan*/  pfid; } ;
typedef  int /*<<< orphan*/  kcqe ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_USTRORM_INTMEM ; 
 int /*<<< orphan*/  CNIC_ULP_ISCSI ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISCSI_KCQE_COMPLETION_STATUS_ISCSI_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ISCSI_KCQE_COMPLETION_STATUS_SUCCESS ; 
 int /*<<< orphan*/  ISCSI_KCQE_OPCODE_INIT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cnic_dev*,int /*<<< orphan*/ ,struct kcqe**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_kcqe*,int /*<<< orphan*/ ,int) ; 
 struct bnx2x* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct cnic_dev *dev, struct kwqe *kwqe)
{
	struct iscsi_kwqe_init2 *req2 = (struct iscsi_kwqe_init2 *) kwqe;
	struct bnx2x *bp = FUNC8(dev->netdev);
	u32 pfid = bp->pfid;
	struct iscsi_kcqe kcqe;
	struct kcqe *cqes[1];

	FUNC7(&kcqe, 0, sizeof(kcqe));
	if (!dev->max_iscsi_conn) {
		kcqe.completion_status =
			ISCSI_KCQE_COMPLETION_STATUS_ISCSI_NOT_SUPPORTED;
		goto done;
	}

	FUNC0(dev, BAR_TSTRORM_INTMEM +
		FUNC3(pfid), req2->error_bit_map[0]);
	FUNC0(dev, BAR_TSTRORM_INTMEM +
		FUNC3(pfid) + 4,
		req2->error_bit_map[1]);

	FUNC1(dev, BAR_USTRORM_INTMEM +
		  FUNC4(pfid), req2->max_cq_sqn);
	FUNC0(dev, BAR_USTRORM_INTMEM +
		FUNC5(pfid), req2->error_bit_map[0]);
	FUNC0(dev, BAR_USTRORM_INTMEM +
		FUNC5(pfid) + 4,
		req2->error_bit_map[1]);

	FUNC1(dev, BAR_CSTRORM_INTMEM +
		  FUNC2(pfid), req2->max_cq_sqn);

	kcqe.completion_status = ISCSI_KCQE_COMPLETION_STATUS_SUCCESS;

done:
	kcqe.op_code = ISCSI_KCQE_OPCODE_INIT;
	cqes[0] = (struct kcqe *) &kcqe;
	FUNC6(dev, CNIC_ULP_ISCSI, cqes, 1);

	return 0;
}
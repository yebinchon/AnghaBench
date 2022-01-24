#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct cnic_ulp_ops {int /*<<< orphan*/  (* indicate_kcqes ) (int /*<<< orphan*/ ,TYPE_1__**,int) ;} ;
struct cnic_local {TYPE_1__** completed_kcq; int /*<<< orphan*/ * ulp_handle; int /*<<< orphan*/ * ulp_ops; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {scalar_t__ kcqe_op_flag; } ;

/* Variables and functions */
 int CNIC_ULP_FCOE ; 
 int CNIC_ULP_ISCSI ; 
 int CNIC_ULP_L4 ; 
 int CNIC_ULP_RDMA ; 
 int /*<<< orphan*/  DRV_CTL_RET_L5_SPQ_CREDIT_CMD ; 
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L2 ; 
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L4 ; 
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L5_FCOE ; 
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L5_ISCSI ; 
 scalar_t__ KCQE_FLAGS_LAYER_MASK_L5_RDMA ; 
 scalar_t__ KCQE_RAMROD_COMPLETION ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct cnic_ulp_ops*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct cnic_ulp_ops* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__**,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct cnic_dev *dev, int num_cqes)
{
	struct cnic_local *cp = dev->cnic_priv;
	int i, j, comp = 0;

	i = 0;
	j = 1;
	while (num_cqes) {
		struct cnic_ulp_ops *ulp_ops;
		int ulp_type;
		u32 kcqe_op_flag = cp->completed_kcq[i]->kcqe_op_flag;
		u32 kcqe_layer = FUNC0(kcqe_op_flag);

		if (FUNC8(kcqe_op_flag & KCQE_RAMROD_COMPLETION))
			comp++;

		while (j < num_cqes) {
			u32 next_op = cp->completed_kcq[i + j]->kcqe_op_flag;

			if (FUNC0(next_op) != kcqe_layer)
				break;

			if (FUNC8(next_op & KCQE_RAMROD_COMPLETION))
				comp++;
			j++;
		}

		if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L5_RDMA)
			ulp_type = CNIC_ULP_RDMA;
		else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L5_ISCSI)
			ulp_type = CNIC_ULP_ISCSI;
		else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L5_FCOE)
			ulp_type = CNIC_ULP_FCOE;
		else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L4)
			ulp_type = CNIC_ULP_L4;
		else if (kcqe_layer == KCQE_FLAGS_LAYER_MASK_L2)
			goto end;
		else {
			FUNC3(dev->netdev, "Unknown type of KCQE(0x%x)\n",
				   kcqe_op_flag);
			goto end;
		}

		FUNC5();
		ulp_ops = FUNC4(cp->ulp_ops[ulp_type]);
		if (FUNC2(ulp_ops)) {
			ulp_ops->indicate_kcqes(cp->ulp_handle[ulp_type],
						  cp->completed_kcq + i, j);
		}
		FUNC6();
end:
		num_cqes -= j;
		i += j;
		j = 1;
	}
	if (FUNC8(comp))
		FUNC1(dev, DRV_CTL_RET_L5_SPQ_CREDIT_CMD, comp);
}
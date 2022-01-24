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
struct hclgevf_query_res_cmd {int /*<<< orphan*/  vf_intr_vector_number; int /*<<< orphan*/  msixcap_localid_ba_rocee; } ;
struct hclgevf_dev {int roce_base_msix_offset; int num_roce_msix; int num_nic_msix; int num_msi; TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HCLGEVF_MSIX_OFT_ROCEE_M ; 
 int /*<<< orphan*/  HCLGEVF_MSIX_OFT_ROCEE_S ; 
 int /*<<< orphan*/  HCLGEVF_OPC_QUERY_VF_RSRC ; 
 int /*<<< orphan*/  HCLGEVF_VEC_NUM_M ; 
 int /*<<< orphan*/  HCLGEVF_VEC_NUM_S ; 
 int HNAE3_MIN_VECTOR_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclgevf_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclgevf_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct hclgevf_dev*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hclgevf_dev *hdev)
{
	struct hclgevf_query_res_cmd *req;
	struct hclgevf_desc desc;
	int ret;

	FUNC3(&desc, HCLGEVF_OPC_QUERY_VF_RSRC, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"query vf resource failed, ret = %d.\n", ret);
		return ret;
	}

	req = (struct hclgevf_query_res_cmd *)desc.data;

	if (FUNC4(hdev)) {
		hdev->roce_base_msix_offset =
		FUNC5(FUNC0(req->msixcap_localid_ba_rocee),
				HCLGEVF_MSIX_OFT_ROCEE_M,
				HCLGEVF_MSIX_OFT_ROCEE_S);
		hdev->num_roce_msix =
		FUNC5(FUNC0(req->vf_intr_vector_number),
				HCLGEVF_VEC_NUM_M, HCLGEVF_VEC_NUM_S);

		/* nic's msix numbers is always equals to the roce's. */
		hdev->num_nic_msix = hdev->num_roce_msix;

		/* VF should have NIC vectors and Roce vectors, NIC vectors
		 * are queued before Roce vectors. The offset is fixed to 64.
		 */
		hdev->num_msi = hdev->num_roce_msix +
				hdev->roce_base_msix_offset;
	} else {
		hdev->num_msi =
		FUNC5(FUNC0(req->vf_intr_vector_number),
				HCLGEVF_VEC_NUM_M, HCLGEVF_VEC_NUM_S);

		hdev->num_nic_msix = hdev->num_msi;
	}

	if (hdev->num_nic_msix < HNAE3_MIN_VECTOR_NUM) {
		FUNC1(&hdev->pdev->dev,
			"Just %u msi resources, not enough for vf(min:2).\n",
			hdev->num_nic_msix);
		return -EINVAL;
	}

	return 0;
}
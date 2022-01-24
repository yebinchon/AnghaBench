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
typedef  int /*<<< orphan*/  u16 ;
struct hclge_umv_spc_alc_cmd {int /*<<< orphan*/  space_size; int /*<<< orphan*/  allocate; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_MAC_VLAN_ALLOCATE ; 
 int /*<<< orphan*/  HCLGE_UMV_SPC_ALC_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hclge_dev *hdev, u16 space_size,
			       u16 *allocated_size, bool is_alloc)
{
	struct hclge_umv_spc_alc_cmd *req;
	struct hclge_desc desc;
	int ret;

	req = (struct hclge_umv_spc_alc_cmd *)desc.data;
	FUNC3(&desc, HCLGE_OPC_MAC_VLAN_ALLOCATE, false);
	if (!is_alloc)
		FUNC4(req->allocate, HCLGE_UMV_SPC_ALC_B, 1);

	req->space_size = FUNC0(space_size);

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"%s umv space failed for cmd_send, ret =%d\n",
			is_alloc ? "allocate" : "free", ret);
		return ret;
	}

	if (is_alloc && allocated_size)
		*allocated_size = FUNC5(desc.data[1]);

	return 0;
}
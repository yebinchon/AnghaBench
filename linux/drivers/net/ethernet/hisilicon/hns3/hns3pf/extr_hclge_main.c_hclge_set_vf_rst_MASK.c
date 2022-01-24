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
struct hclge_vf_rst_cmd {int dest_vfid; int vf_rst; } ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_GBL_RST_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct hclge_dev *hdev, int func_id, bool reset)
{
	struct hclge_vf_rst_cmd *req;
	struct hclge_desc desc;

	req = (struct hclge_vf_rst_cmd *)desc.data;
	FUNC1(&desc, HCLGE_OPC_GBL_RST_STATUS, false);
	req->dest_vfid = func_id;

	if (reset)
		req->vf_rst = 0x1;

	return FUNC0(&hdev->hw, &desc, 1);
}
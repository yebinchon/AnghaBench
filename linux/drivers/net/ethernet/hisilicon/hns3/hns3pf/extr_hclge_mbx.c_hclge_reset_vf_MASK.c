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
struct hclge_vport {int /*<<< orphan*/  vport_id; struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hclge_vport *vport,
			   struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
	struct hclge_dev *hdev = vport->back;
	int ret;

	FUNC0(&hdev->pdev->dev, "PF received VF reset request from VF %d!",
		 vport->vport_id);

	ret = FUNC1(hdev, vport->vport_id);
	FUNC2(vport, mbx_req, ret, NULL, 0);
}
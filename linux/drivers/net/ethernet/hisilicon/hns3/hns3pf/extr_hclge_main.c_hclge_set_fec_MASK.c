#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mac {int fec_ability; int user_fec_mode; } ;
struct TYPE_3__ {struct hclge_mac mac; } ;
struct hclge_dev {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HNAE3_FEC_USER_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int FUNC3 (struct hclge_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct hnae3_handle *handle, u32 fec_mode)
{
	struct hclge_vport *vport = FUNC2(handle);
	struct hclge_dev *hdev = vport->back;
	struct hclge_mac *mac = &hdev->hw.mac;
	int ret;

	if (fec_mode && !(mac->fec_ability & fec_mode)) {
		FUNC1(&hdev->pdev->dev, "unsupported fec mode\n");
		return -EINVAL;
	}

	ret = FUNC3(hdev, fec_mode);
	if (ret)
		return ret;

	mac->user_fec_mode = fec_mode | FUNC0(HNAE3_FEC_USER_DEF);
	return 0;
}
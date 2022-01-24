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
typedef  int u8 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int flag; } ;

/* Variables and functions */
 int EINVAL ; 
 int HCLGE_FLAG_DCB_ENABLE ; 
 int HCLGE_FLAG_MQPRIO_ENABLE ; 
 int FUNC0 (struct hclge_dev*) ; 
 int FUNC1 (struct hclge_dev*,int,int*) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int FUNC3 (struct hclge_dev*) ; 
 int FUNC4 (struct hclge_dev*) ; 
 int FUNC5 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hclge_dev*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct hclge_dev*,int) ; 

__attribute__((used)) static int FUNC8(struct hnae3_handle *h, u8 tc, u8 *prio_tc)
{
	struct hclge_vport *vport = FUNC2(h);
	struct hclge_dev *hdev = vport->back;
	int ret;

	if (hdev->flag & HCLGE_FLAG_DCB_ENABLE)
		return -EINVAL;

	ret = FUNC1(hdev, tc, prio_tc);
	if (ret)
		return -EINVAL;

	ret = FUNC3(hdev);
	if (ret)
		return ret;

	FUNC7(hdev, tc);
	FUNC6(hdev, prio_tc);

	ret = FUNC5(hdev, false);
	if (ret)
		goto err_out;

	ret = FUNC0(hdev);
	if (ret)
		goto err_out;

	hdev->flag &= ~HCLGE_FLAG_DCB_ENABLE;

	if (tc > 1)
		hdev->flag |= HCLGE_FLAG_MQPRIO_ENABLE;
	else
		hdev->flag &= ~HCLGE_FLAG_MQPRIO_ENABLE;

	return FUNC4(hdev);

err_out:
	FUNC4(hdev);

	return ret;
}
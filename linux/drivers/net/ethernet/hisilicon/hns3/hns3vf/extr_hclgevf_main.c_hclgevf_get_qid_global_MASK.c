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
typedef  int /*<<< orphan*/  u16 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int dummy; } ;
typedef  int /*<<< orphan*/  resp_data ;
typedef  int /*<<< orphan*/  queue_id ;
typedef  int /*<<< orphan*/  msg_data ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_MBX_GET_QID_IN_PF ; 
 struct hclgevf_dev* FUNC0 (struct hnae3_handle*) ; 
 int FUNC1 (struct hclgevf_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u16 FUNC3(struct hnae3_handle *handle, u16 queue_id)
{
	struct hclgevf_dev *hdev = FUNC0(handle);
	u8 msg_data[2], resp_data[2];
	u16 qid_in_pf = 0;
	int ret;

	FUNC2(&msg_data[0], &queue_id, sizeof(queue_id));

	ret = FUNC1(hdev, HCLGE_MBX_GET_QID_IN_PF, 0, msg_data,
				   sizeof(msg_data), true, resp_data,
				   sizeof(resp_data));
	if (!ret)
		qid_in_pf = *(u16 *)resp_data;

	return qid_in_pf;
}
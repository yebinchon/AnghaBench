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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hclgevf_dev {int /*<<< orphan*/  rx_buf_len; int /*<<< orphan*/  rss_size_max; int /*<<< orphan*/  num_tqps; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HCLGEVF_TQPS_RSS_INFO_LEN ; 
 int /*<<< orphan*/  HCLGE_MBX_GET_QINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hclgevf_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct hclgevf_dev *hdev)
{
#define HCLGEVF_TQPS_RSS_INFO_LEN	6
	u8 resp_msg[HCLGEVF_TQPS_RSS_INFO_LEN];
	int status;

	status = FUNC1(hdev, HCLGE_MBX_GET_QINFO, 0, NULL, 0,
				      true, resp_msg,
				      HCLGEVF_TQPS_RSS_INFO_LEN);
	if (status) {
		FUNC0(&hdev->pdev->dev,
			"VF request to get tqp info from PF failed %d",
			status);
		return status;
	}

	FUNC2(&hdev->num_tqps, &resp_msg[0], sizeof(u16));
	FUNC2(&hdev->rss_size_max, &resp_msg[2], sizeof(u16));
	FUNC2(&hdev->rx_buf_len, &resp_msg[4], sizeof(u16));

	return 0;
}
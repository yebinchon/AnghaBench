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
struct hclge_pkt_buf_alloc {int dummy; } ;
struct hclge_dev {int /*<<< orphan*/  pkt_buf_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 scalar_t__ FUNC1 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 scalar_t__ FUNC2 (struct hclge_pkt_buf_alloc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_dev*,struct hclge_pkt_buf_alloc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 scalar_t__ FUNC5 (struct hclge_dev*,int,struct hclge_pkt_buf_alloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hclge_dev*) ; 

__attribute__((used)) static int FUNC7(struct hclge_dev *hdev,
				struct hclge_pkt_buf_alloc *buf_alloc)
{
	/* When DCB is not supported, rx private buffer is not allocated. */
	if (!FUNC6(hdev)) {
		u32 rx_all = hdev->pkt_buf_size;

		rx_all -= FUNC2(buf_alloc);
		if (!FUNC3(hdev, buf_alloc, rx_all))
			return -ENOMEM;

		return 0;
	}

	if (FUNC4(hdev, buf_alloc))
		return 0;

	if (FUNC5(hdev, true, buf_alloc))
		return 0;

	/* try to decrease the buffer size */
	if (FUNC5(hdev, false, buf_alloc))
		return 0;

	if (FUNC0(hdev, buf_alloc))
		return 0;

	if (FUNC1(hdev, buf_alloc))
		return 0;

	return -ENOMEM;
}
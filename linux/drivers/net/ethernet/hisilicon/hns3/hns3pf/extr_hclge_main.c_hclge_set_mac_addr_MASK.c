#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_5__ {unsigned char const* mac_addr; } ;
struct TYPE_6__ {TYPE_2__ mac; } ;
struct hclge_dev {TYPE_3__ hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char const*) ; 
 int FUNC3 (struct hnae3_handle*,unsigned char const*) ; 
 struct hclge_vport* FUNC4 (struct hnae3_handle*) ; 
 int FUNC5 (struct hclge_dev*,unsigned char const*) ; 
 scalar_t__ FUNC6 (struct hnae3_handle*,unsigned char const*) ; 
 scalar_t__ FUNC7 (unsigned char const*) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (unsigned char const*) ; 
 scalar_t__ FUNC10 (unsigned char const*) ; 

__attribute__((used)) static int FUNC11(struct hnae3_handle *handle, void *p,
			      bool is_first)
{
	const unsigned char *new_addr = (const unsigned char *)p;
	struct hclge_vport *vport = FUNC4(handle);
	struct hclge_dev *hdev = vport->back;
	int ret;

	/* mac addr check */
	if (FUNC10(new_addr) ||
	    FUNC7(new_addr) ||
	    FUNC9(new_addr)) {
		FUNC0(&hdev->pdev->dev,
			"Change uc mac err! invalid mac:%pM.\n",
			 new_addr);
		return -EINVAL;
	}

	if ((!is_first || FUNC8()) &&
	    FUNC6(handle, hdev->hw.mac.mac_addr))
		FUNC1(&hdev->pdev->dev,
			 "remove old uc mac address fail.\n");

	ret = FUNC3(handle, new_addr);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"add uc mac address fail, ret =%d.\n",
			ret);

		if (!is_first &&
		    FUNC3(handle, hdev->hw.mac.mac_addr))
			FUNC0(&hdev->pdev->dev,
				"restore uc mac address fail.\n");

		return -EIO;
	}

	ret = FUNC5(hdev, new_addr);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"configure mac pause address fail, ret =%d.\n",
			ret);
		return -EIO;
	}

	FUNC2(hdev->hw.mac.mac_addr, new_addr);

	return 0;
}
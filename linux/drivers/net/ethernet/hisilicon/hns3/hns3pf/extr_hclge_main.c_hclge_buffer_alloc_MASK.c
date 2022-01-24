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
struct hclge_pkt_buf_alloc {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 int FUNC2 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 int FUNC3 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 int FUNC4 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 int FUNC5 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 int FUNC6 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 int FUNC7 (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ; 
 scalar_t__ FUNC8 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hclge_pkt_buf_alloc*) ; 
 struct hclge_pkt_buf_alloc* FUNC10 (int,int /*<<< orphan*/ ) ; 

int FUNC11(struct hclge_dev *hdev)
{
	struct hclge_pkt_buf_alloc *pkt_buf;
	int ret;

	pkt_buf = FUNC10(sizeof(*pkt_buf), GFP_KERNEL);
	if (!pkt_buf)
		return -ENOMEM;

	ret = FUNC7(hdev, pkt_buf);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"could not calc tx buffer size for all TCs %d\n", ret);
		goto out;
	}

	ret = FUNC6(hdev, pkt_buf);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"could not alloc tx buffers %d\n", ret);
		goto out;
	}

	ret = FUNC3(hdev, pkt_buf);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"could not calc rx priv buffer size for all TCs %d\n",
			ret);
		goto out;
	}

	ret = FUNC4(hdev, pkt_buf);
	if (ret) {
		FUNC0(&hdev->pdev->dev, "could not alloc rx priv buffer %d\n",
			ret);
		goto out;
	}

	if (FUNC8(hdev)) {
		ret = FUNC5(hdev, pkt_buf);
		if (ret) {
			FUNC0(&hdev->pdev->dev,
				"could not configure rx private waterline %d\n",
				ret);
			goto out;
		}

		ret = FUNC1(hdev, pkt_buf);
		if (ret) {
			FUNC0(&hdev->pdev->dev,
				"could not configure common threshold %d\n",
				ret);
			goto out;
		}
	}

	ret = FUNC2(hdev, pkt_buf);
	if (ret)
		FUNC0(&hdev->pdev->dev,
			"could not configure common waterline %d\n", ret);

out:
	FUNC9(pkt_buf);
	return ret;
}
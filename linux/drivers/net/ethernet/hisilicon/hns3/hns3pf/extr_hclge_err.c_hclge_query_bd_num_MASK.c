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
typedef  int u32 ;
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_1__* pdev; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
typedef  enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int HCLGE_MPF_MSIX_INT_MIN_BD_NUM ; 
 int HCLGE_MPF_RAS_INT_MIN_BD_NUM ; 
 int HCLGE_PF_MSIX_INT_MIN_BD_NUM ; 
 int HCLGE_PF_RAS_INT_MIN_BD_NUM ; 
 int HCLGE_QUERY_MSIX_INT_STS_BD_NUM ; 
 int HCLGE_QUERY_RAS_INT_STS_BD_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev, bool is_ras,
			      int *mpf_bd_num, int *pf_bd_num)
{
	struct device *dev = &hdev->pdev->dev;
	u32 mpf_min_bd_num, pf_min_bd_num;
	enum hclge_opcode_type opcode;
	struct hclge_desc desc_bd;
	int ret;

	if (is_ras) {
		opcode = HCLGE_QUERY_RAS_INT_STS_BD_NUM;
		mpf_min_bd_num = HCLGE_MPF_RAS_INT_MIN_BD_NUM;
		pf_min_bd_num = HCLGE_PF_RAS_INT_MIN_BD_NUM;
	} else {
		opcode = HCLGE_QUERY_MSIX_INT_STS_BD_NUM;
		mpf_min_bd_num = HCLGE_MPF_MSIX_INT_MIN_BD_NUM;
		pf_min_bd_num = HCLGE_PF_MSIX_INT_MIN_BD_NUM;
	}

	FUNC2(&desc_bd, opcode, true);
	ret = FUNC1(&hdev->hw, &desc_bd, 1);
	if (ret) {
		FUNC0(dev, "fail(%d) to query msix int status bd num\n",
			ret);
		return ret;
	}

	*mpf_bd_num = FUNC3(desc_bd.data[0]);
	*pf_bd_num = FUNC3(desc_bd.data[1]);
	if (*mpf_bd_num < mpf_min_bd_num || *pf_bd_num < pf_min_bd_num) {
		FUNC0(dev, "Invalid bd num: mpf(%d), pf(%d)\n",
			*mpf_bd_num, *pf_bd_num);
		return -EINVAL;
	}

	return 0;
}
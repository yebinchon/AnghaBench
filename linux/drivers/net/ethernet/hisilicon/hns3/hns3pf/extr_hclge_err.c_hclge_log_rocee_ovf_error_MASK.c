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
struct hclge_hw_error {int msg; int int_msk; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int HCLGE_ROCEE_OVF_ERR_INT_MASK ; 
 int HCLGE_ROCEE_OVF_ERR_TYPE_MASK ; 
 int /*<<< orphan*/  HCLGE_ROCEE_PF_RAS_INT_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int FUNC1 (struct hclge_dev*,struct hclge_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hclge_hw_error* hclge_rocee_qmm_ovf_err_int ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev)
{
	struct device *dev = &hdev->pdev->dev;
	struct hclge_desc desc[2];
	int ret;

	/* read overflow error status */
	ret = FUNC1(hdev, &desc[0], HCLGE_ROCEE_PF_RAS_INT_CMD,
				    0);
	if (ret) {
		FUNC0(dev, "failed(%d) to query ROCEE OVF error sts\n", ret);
		return ret;
	}

	/* log overflow error */
	if (FUNC2(desc[0].data[0]) & HCLGE_ROCEE_OVF_ERR_INT_MASK) {
		const struct hclge_hw_error *err;
		u32 err_sts;

		err = &hclge_rocee_qmm_ovf_err_int[0];
		err_sts = HCLGE_ROCEE_OVF_ERR_TYPE_MASK &
			  FUNC2(desc[0].data[0]);
		while (err->msg) {
			if (err->int_msk == err_sts) {
				FUNC0(dev, "%s [error status=0x%x] found\n",
					err->msg,
					FUNC2(desc[0].data[0]));
				break;
			}
			err++;
		}
	}

	if (FUNC2(desc[0].data[1]) & HCLGE_ROCEE_OVF_ERR_INT_MASK) {
		FUNC0(dev, "ROCEE TSP OVF [error status=0x%x] found\n",
			FUNC2(desc[0].data[1]));
	}

	if (FUNC2(desc[0].data[2]) & HCLGE_ROCEE_OVF_ERR_INT_MASK) {
		FUNC0(dev, "ROCEE SCC OVF [error status=0x%x] found\n",
			FUNC2(desc[0].data[2]));
	}

	return 0;
}
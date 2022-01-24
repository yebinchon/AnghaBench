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
typedef  scalar_t__ u8 ;
struct hclge_vport {scalar_t__ qs_offset; } ;
struct TYPE_2__ {scalar_t__ num_tc; } ;
struct hclge_dev {scalar_t__ tx_sch_mode; scalar_t__ num_alloc_vport; TYPE_1__ tm_info; struct hclge_vport* vport; } ;

/* Variables and functions */
 scalar_t__ HCLGE_FLAG_TC_BASE_SCH_MODE ; 
 int /*<<< orphan*/  HCLGE_SCH_MODE_DWRR ; 
 int FUNC0 (struct hclge_dev*,scalar_t__) ; 
 int FUNC1 (struct hclge_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hclge_vport*) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev)
{
	struct hclge_vport *vport = hdev->vport;
	int ret;
	u8 i, k;

	if (hdev->tx_sch_mode == HCLGE_FLAG_TC_BASE_SCH_MODE) {
		for (i = 0; i < hdev->tm_info.num_tc; i++) {
			ret = FUNC0(hdev, i);
			if (ret)
				return ret;

			for (k = 0; k < hdev->num_alloc_vport; k++) {
				ret = FUNC1(
					hdev, vport[k].qs_offset + i,
					HCLGE_SCH_MODE_DWRR);
				if (ret)
					return ret;
			}
		}
	} else {
		for (i = 0; i < hdev->num_alloc_vport; i++) {
			ret = FUNC2(vport);
			if (ret)
				return ret;

			vport++;
		}
	}

	return 0;
}
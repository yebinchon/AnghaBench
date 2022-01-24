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
struct hclge_mac {scalar_t__ media_type; scalar_t__ speed_type; int speed; } ;
struct TYPE_4__ {struct hclge_mac mac; } ;
struct hclge_dev {int support_sfp_query; TYPE_1__* pdev; TYPE_2__ hw; } ;
struct TYPE_3__ {int revision; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HCLGE_MAC_FULL ; 
 int HCLGE_MAC_SPEED_UNKNOWN ; 
 scalar_t__ HNAE3_MEDIA_TYPE_COPPER ; 
 scalar_t__ QUERY_ACTIVE_SPEED ; 
 int FUNC0 (struct hclge_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclge_dev*,struct hclge_mac*) ; 
 int FUNC2 (struct hclge_dev*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_mac*) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev)
{
	struct hclge_mac *mac = &hdev->hw.mac;
	int speed = HCLGE_MAC_SPEED_UNKNOWN;
	int ret;

	/* get the port info from SFP cmd if not copper port */
	if (mac->media_type == HNAE3_MEDIA_TYPE_COPPER)
		return 0;

	/* if IMP does not support get SFP/qSFP info, return directly */
	if (!hdev->support_sfp_query)
		return 0;

	if (hdev->pdev->revision >= 0x21)
		ret = FUNC1(hdev, mac);
	else
		ret = FUNC2(hdev, &speed);

	if (ret == -EOPNOTSUPP) {
		hdev->support_sfp_query = false;
		return ret;
	} else if (ret) {
		return ret;
	}

	if (hdev->pdev->revision >= 0x21) {
		if (mac->speed_type == QUERY_ACTIVE_SPEED) {
			FUNC3(mac);
			return 0;
		}
		return FUNC0(hdev, mac->speed,
					       HCLGE_MAC_FULL);
	} else {
		if (speed == HCLGE_MAC_SPEED_UNKNOWN)
			return 0; /* do nothing if no SFP */

		/* must config full duplex for SFP */
		return FUNC0(hdev, speed, HCLGE_MAC_FULL);
	}
}
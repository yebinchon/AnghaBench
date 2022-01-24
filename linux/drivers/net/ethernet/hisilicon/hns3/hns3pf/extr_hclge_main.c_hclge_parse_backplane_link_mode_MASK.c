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
typedef  int /*<<< orphan*/  u8 ;
struct hclge_mac {int /*<<< orphan*/  supported; } ;
struct TYPE_3__ {struct hclge_mac mac; } ;
struct hclge_dev {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct TYPE_4__ {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Backplane_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_FEC_NONE_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Pause_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct hclge_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hclge_dev *hdev,
					    u8 speed_ability)
{
	struct hclge_mac *mac = &hdev->hw.mac;

	FUNC1(mac, speed_ability);
	if (hdev->pdev->revision >= 0x21)
		FUNC0(mac);
	FUNC2(ETHTOOL_LINK_MODE_Backplane_BIT, mac->supported);
	FUNC2(ETHTOOL_LINK_MODE_Pause_BIT, mac->supported);
	FUNC2(ETHTOOL_LINK_MODE_FEC_NONE_BIT, mac->supported);
}
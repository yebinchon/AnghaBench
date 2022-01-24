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
struct TYPE_3__ {int fw_major; int fw_minor; int fw_rev; int fw_eng; int mfw_rev; int mbi_version; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct qede_dev {int /*<<< orphan*/  pdev; TYPE_2__ dev_info; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 char* DRV_MODULE_VERSION ; 
 int ETHTOOL_FWVERS_LEN ; 
 int QED_MBI_VERSION_0_MASK ; 
 int QED_MBI_VERSION_0_OFFSET ; 
 int QED_MBI_VERSION_1_MASK ; 
 int QED_MBI_VERSION_1_OFFSET ; 
 int QED_MBI_VERSION_2_MASK ; 
 int QED_MBI_VERSION_2_OFFSET ; 
 struct qede_dev* FUNC0 (struct net_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev,
			     struct ethtool_drvinfo *info)
{
	char mfw[ETHTOOL_FWVERS_LEN], storm[ETHTOOL_FWVERS_LEN];
	struct qede_dev *edev = FUNC0(ndev);
	char mbi[ETHTOOL_FWVERS_LEN];

	FUNC3(info->driver, "qede", sizeof(info->driver));

	FUNC2(storm, ETHTOOL_FWVERS_LEN, "%d.%d.%d.%d",
		 edev->dev_info.common.fw_major,
		 edev->dev_info.common.fw_minor,
		 edev->dev_info.common.fw_rev,
		 edev->dev_info.common.fw_eng);

	FUNC2(mfw, ETHTOOL_FWVERS_LEN, "%d.%d.%d.%d",
		 (edev->dev_info.common.mfw_rev >> 24) & 0xFF,
		 (edev->dev_info.common.mfw_rev >> 16) & 0xFF,
		 (edev->dev_info.common.mfw_rev >> 8) & 0xFF,
		 edev->dev_info.common.mfw_rev & 0xFF);

	if ((FUNC4(storm) + FUNC4(DRV_MODULE_VERSION) + FUNC4("[storm]  ")) <
	    sizeof(info->version))
		FUNC2(info->version, sizeof(info->version),
			 "%s [storm %s]", DRV_MODULE_VERSION, storm);
	else
		FUNC2(info->version, sizeof(info->version),
			 "%s %s", DRV_MODULE_VERSION, storm);

	if (edev->dev_info.common.mbi_version) {
		FUNC2(mbi, ETHTOOL_FWVERS_LEN, "%d.%d.%d",
			 (edev->dev_info.common.mbi_version &
			  QED_MBI_VERSION_2_MASK) >> QED_MBI_VERSION_2_OFFSET,
			 (edev->dev_info.common.mbi_version &
			  QED_MBI_VERSION_1_MASK) >> QED_MBI_VERSION_1_OFFSET,
			 (edev->dev_info.common.mbi_version &
			  QED_MBI_VERSION_0_MASK) >> QED_MBI_VERSION_0_OFFSET);
		FUNC2(info->fw_version, sizeof(info->fw_version),
			 "mbi %s [mfw %s]", mbi, mfw);
	} else {
		FUNC2(info->fw_version, sizeof(info->fw_version),
			 "mfw %s", mfw);
	}

	FUNC3(info->bus_info, FUNC1(edev->pdev), sizeof(info->bus_info));
}
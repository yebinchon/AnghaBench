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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int n_stats; int regdump_len; scalar_t__ eedump_len; scalar_t__ testinfo_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int vecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_CFG_DRV_NAME ; 
 int /*<<< orphan*/  AQ_CFG_DRV_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aq_ethtool_queue_stat_names ; 
 int /*<<< orphan*/  aq_ethtool_stat_names ; 
 struct aq_nic_cfg_s* FUNC1 (struct aq_nic_s*) ; 
 int FUNC2 (struct aq_nic_s*) ; 
 int FUNC3 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC4 (struct net_device*) ; 
 char* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 struct pci_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct net_device *ndev,
				   struct ethtool_drvinfo *drvinfo)
{
	struct aq_nic_s *aq_nic = FUNC4(ndev);
	struct aq_nic_cfg_s *cfg = FUNC1(aq_nic);
	struct pci_dev *pdev = FUNC9(ndev->dev.parent);
	u32 firmware_version = FUNC2(aq_nic);
	u32 regs_count = FUNC3(aq_nic);

	FUNC7(drvinfo->driver, AQ_CFG_DRV_NAME, sizeof(drvinfo->driver));
	FUNC7(drvinfo->version, AQ_CFG_DRV_VERSION, sizeof(drvinfo->version));

	FUNC6(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "%u.%u.%u", firmware_version >> 24,
		 (firmware_version >> 16) & 0xFFU, firmware_version & 0xFFFFU);

	FUNC8(drvinfo->bus_info, pdev ? FUNC5(pdev) : "",
		sizeof(drvinfo->bus_info));
	drvinfo->n_stats = FUNC0(aq_ethtool_stat_names) +
		cfg->vecs * FUNC0(aq_ethtool_queue_stat_names);
	drvinfo->testinfo_len = 0;
	drvinfo->regdump_len = regs_count;
	drvinfo->eedump_len = 0;
}
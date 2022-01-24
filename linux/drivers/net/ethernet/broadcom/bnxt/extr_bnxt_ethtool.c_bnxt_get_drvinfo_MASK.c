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
struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ regdump_len; scalar_t__ eedump_len; int /*<<< orphan*/  testinfo_len; int /*<<< orphan*/  n_stats; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct bnxt {int /*<<< orphan*/  num_tests; int /*<<< orphan*/  pdev; int /*<<< orphan*/  fw_ver_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int /*<<< orphan*/  DRV_MODULE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
			     struct ethtool_drvinfo *info)
{
	struct bnxt *bp = FUNC1(dev);

	FUNC3(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
	FUNC3(info->version, DRV_MODULE_VERSION, sizeof(info->version));
	FUNC3(info->fw_version, bp->fw_ver_str, sizeof(info->fw_version));
	FUNC3(info->bus_info, FUNC2(bp->pdev), sizeof(info->bus_info));
	info->n_stats = FUNC0(bp);
	info->testinfo_len = bp->num_tests;
	/* TODO CHIMP_FW: eeprom dump details */
	info->eedump_len = 0;
	/* TODO CHIMP FW: reg dump details */
	info->regdump_len = 0;
}
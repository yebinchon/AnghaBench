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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  n_priv_flags; int /*<<< orphan*/  erom_version; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  regdump_len; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  tp_vers; int /*<<< orphan*/  fw_vers; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxgb4_driver_name ; 
 int /*<<< orphan*/  cxgb4_driver_version ; 
 int /*<<< orphan*/  cxgb4_priv_flags_strings ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct adapter *adapter = FUNC6(dev);
	u32 exprom_vers;

	FUNC10(info->driver, cxgb4_driver_name, sizeof(info->driver));
	FUNC10(info->version, cxgb4_driver_version,
		sizeof(info->version));
	FUNC10(info->bus_info, FUNC7(adapter->pdev),
		sizeof(info->bus_info));
	info->regdump_len = FUNC5(dev);

	if (!adapter->params.fw_vers)
		FUNC9(info->fw_version, "N/A");
	else
		FUNC8(info->fw_version, sizeof(info->fw_version),
			 "%u.%u.%u.%u, TP %u.%u.%u.%u",
			 FUNC2(adapter->params.fw_vers),
			 FUNC4(adapter->params.fw_vers),
			 FUNC3(adapter->params.fw_vers),
			 FUNC1(adapter->params.fw_vers),
			 FUNC2(adapter->params.tp_vers),
			 FUNC4(adapter->params.tp_vers),
			 FUNC3(adapter->params.tp_vers),
			 FUNC1(adapter->params.tp_vers));

	if (!FUNC11(adapter, &exprom_vers))
		FUNC8(info->erom_version, sizeof(info->erom_version),
			 "%u.%u.%u.%u",
			 FUNC2(exprom_vers),
			 FUNC4(exprom_vers),
			 FUNC3(exprom_vers),
			 FUNC1(exprom_vers));
	info->n_priv_flags = FUNC0(cxgb4_priv_flags_strings);
}
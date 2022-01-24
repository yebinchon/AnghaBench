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
typedef  int /*<<< orphan*/  ucode_ver ;
struct net_device {int dummy; } ;
struct ipw2100_priv {int eeprom_version; int /*<<< orphan*/  pci_dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
typedef  int /*<<< orphan*/  fw_ver ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct ipw2100_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*,char*,int) ; 
 struct ipw2100_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				    struct ethtool_drvinfo *info)
{
	struct ipw2100_priv *priv = FUNC2(dev);
	char fw_ver[64], ucode_ver[64];

	FUNC5(info->driver, DRV_NAME, sizeof(info->driver));
	FUNC5(info->version, DRV_VERSION, sizeof(info->version));

	FUNC0(priv, fw_ver, sizeof(fw_ver));
	FUNC1(priv, ucode_ver, sizeof(ucode_ver));

	FUNC4(info->fw_version, sizeof(info->fw_version), "%s:%d:%s",
		 fw_ver, priv->eeprom_version, ucode_ver);

	FUNC5(info->bus_info, FUNC3(priv->pci_dev),
		sizeof(info->bus_info));
}
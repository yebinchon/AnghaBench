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
struct qcaspi {TYPE_1__* spi_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* QCASPI_DRV_NAME ; 
 char* QCASPI_DRV_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 struct qcaspi* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, struct ethtool_drvinfo *p)
{
	struct qcaspi *qca = FUNC1(dev);

	FUNC2(p->driver, QCASPI_DRV_NAME, sizeof(p->driver));
	FUNC2(p->version, QCASPI_DRV_VERSION, sizeof(p->version));
	FUNC2(p->fw_version, "QCA7000", sizeof(p->fw_version));
	FUNC2(p->bus_info, FUNC0(&qca->spi_dev->dev),
		sizeof(p->bus_info));
}
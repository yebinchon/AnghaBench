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
typedef  int u32 ;
struct smsc911x_platform_config {int phy_interface; int shift; int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_type; int /*<<< orphan*/  irq_polarity; int /*<<< orphan*/  mac; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int PHY_INTERFACE_MODE_NA ; 
 int /*<<< orphan*/  SMSC911X_FORCE_EXTERNAL_PHY ; 
 int /*<<< orphan*/  SMSC911X_FORCE_INTERNAL_PHY ; 
 int /*<<< orphan*/  SMSC911X_IRQ_POLARITY_ACTIVE_HIGH ; 
 int /*<<< orphan*/  SMSC911X_IRQ_TYPE_PUSH_PULL ; 
 int /*<<< orphan*/  SMSC911X_SAVE_MAC_ADDRESS ; 
 int /*<<< orphan*/  SMSC911X_USE_16BIT ; 
 int /*<<< orphan*/  SMSC911X_USE_32BIT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,char*,int*) ; 

__attribute__((used)) static int FUNC4(struct smsc911x_platform_config *config,
				 struct device *dev)
{
	int phy_interface;
	u32 width = 0;
	int err;

	phy_interface = FUNC1(dev);
	if (phy_interface < 0)
		phy_interface = PHY_INTERFACE_MODE_NA;
	config->phy_interface = phy_interface;

	FUNC0(dev, config->mac, ETH_ALEN);

	err = FUNC3(dev, "reg-io-width", &width);
	if (err == -ENXIO)
		return err;
	if (!err && width == 4)
		config->flags |= SMSC911X_USE_32BIT;
	else
		config->flags |= SMSC911X_USE_16BIT;

	FUNC3(dev, "reg-shift", &config->shift);

	if (FUNC2(dev, "smsc,irq-active-high"))
		config->irq_polarity = SMSC911X_IRQ_POLARITY_ACTIVE_HIGH;

	if (FUNC2(dev, "smsc,irq-push-pull"))
		config->irq_type = SMSC911X_IRQ_TYPE_PUSH_PULL;

	if (FUNC2(dev, "smsc,force-internal-phy"))
		config->flags |= SMSC911X_FORCE_INTERNAL_PHY;

	if (FUNC2(dev, "smsc,force-external-phy"))
		config->flags |= SMSC911X_FORCE_EXTERNAL_PHY;

	if (FUNC2(dev, "smsc,save-mac-address"))
		config->flags |= SMSC911X_SAVE_MAC_ADDRESS;

	return 0;
}
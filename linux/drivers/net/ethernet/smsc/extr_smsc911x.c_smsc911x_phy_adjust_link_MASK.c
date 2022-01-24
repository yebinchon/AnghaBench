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
struct smsc911x_data {scalar_t__ last_duplex; int last_carrier; int gpio_orig_setting; int gpio_setting; int /*<<< orphan*/  using_extphy; int /*<<< orphan*/  mac_lock; } ;
struct phy_device {scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_CFG ; 
 int GPIO_CFG_GPIOBUF0_ ; 
 int GPIO_CFG_GPIOD0_ ; 
 int GPIO_CFG_GPIODIR0_ ; 
 int GPIO_CFG_LED1_EN_ ; 
 int /*<<< orphan*/  MAC_CR ; 
 unsigned int MAC_CR_FDPX_ ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hw ; 
 struct smsc911x_data* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 unsigned int FUNC3 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc911x_data*) ; 
 int FUNC6 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smsc911x_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC1(dev);
	struct phy_device *phy_dev = dev->phydev;
	unsigned long flags;
	int carrier;

	if (phy_dev->duplex != pdata->last_duplex) {
		unsigned int mac_cr;
		FUNC0(pdata, hw, "duplex state has changed");

		FUNC8(&pdata->mac_lock, flags);
		mac_cr = FUNC3(pdata, MAC_CR);
		if (phy_dev->duplex) {
			FUNC0(pdata, hw,
				   "configuring for full duplex mode");
			mac_cr |= MAC_CR_FDPX_;
		} else {
			FUNC0(pdata, hw,
				   "configuring for half duplex mode");
			mac_cr &= ~MAC_CR_FDPX_;
		}
		FUNC4(pdata, MAC_CR, mac_cr);
		FUNC9(&pdata->mac_lock, flags);

		FUNC5(pdata);
		pdata->last_duplex = phy_dev->duplex;
	}

	carrier = FUNC2(dev);
	if (carrier != pdata->last_carrier) {
		FUNC0(pdata, hw, "carrier state has changed");
		if (carrier) {
			FUNC0(pdata, hw, "configuring for carrier OK");
			if ((pdata->gpio_orig_setting & GPIO_CFG_LED1_EN_) &&
			    (!pdata->using_extphy)) {
				/* Restore original GPIO configuration */
				pdata->gpio_setting = pdata->gpio_orig_setting;
				FUNC7(pdata, GPIO_CFG,
					pdata->gpio_setting);
			}
		} else {
			FUNC0(pdata, hw, "configuring for no carrier");
			/* Check global setting that LED1
			 * usage is 10/100 indicator */
			pdata->gpio_setting = FUNC6(pdata,
				GPIO_CFG);
			if ((pdata->gpio_setting & GPIO_CFG_LED1_EN_) &&
			    (!pdata->using_extphy)) {
				/* Force 10/100 LED off, after saving
				 * original GPIO configuration */
				pdata->gpio_orig_setting = pdata->gpio_setting;

				pdata->gpio_setting &= ~GPIO_CFG_LED1_EN_;
				pdata->gpio_setting |= (GPIO_CFG_GPIOBUF0_
							| GPIO_CFG_GPIODIR0_
							| GPIO_CFG_GPIOD0_);
				FUNC7(pdata, GPIO_CFG,
					pdata->gpio_setting);
			}
		}
		pdata->last_carrier = carrier;
	}
}
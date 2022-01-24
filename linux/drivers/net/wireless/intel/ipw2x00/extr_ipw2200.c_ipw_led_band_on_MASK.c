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
struct ipw_priv {int config; scalar_t__ nic_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  led_association_on; int /*<<< orphan*/  led_ofdm_off; int /*<<< orphan*/  led_ofdm_on; TYPE_1__* assoc_network; int /*<<< orphan*/  led_association_off; } ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 int CFG_NO_LED ; 
 scalar_t__ EEPROM_NIC_TYPE_1 ; 
 scalar_t__ IEEE_A ; 
 scalar_t__ IEEE_G ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IPW_EVENT_REG ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	unsigned long flags;
	u32 led;

	/* Only nic type 1 supports mode LEDs */
	if (priv->config & CFG_NO_LED ||
	    priv->nic_type != EEPROM_NIC_TYPE_1 || !priv->assoc_network)
		return;

	FUNC4(&priv->lock, flags);

	led = FUNC1(priv, IPW_EVENT_REG);
	if (priv->assoc_network->mode == IEEE_A) {
		led |= priv->led_ofdm_on;
		led &= priv->led_association_off;
		FUNC0("Mode LED On: 802.11a\n");
	} else if (priv->assoc_network->mode == IEEE_G) {
		led |= priv->led_ofdm_on;
		led |= priv->led_association_on;
		FUNC0("Mode LED On: 802.11g\n");
	} else {
		led &= priv->led_ofdm_off;
		led |= priv->led_association_on;
		FUNC0("Mode LED On: 802.11b\n");
	}

	led = FUNC2(led);

	FUNC0("Reg: 0x%08X\n", led);
	FUNC3(priv, IPW_EVENT_REG, led);

	FUNC5(&priv->lock, flags);
}
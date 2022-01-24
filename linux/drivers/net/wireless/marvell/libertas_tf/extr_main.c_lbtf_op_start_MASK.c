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
struct lbtf_private {int mac_control; int /*<<< orphan*/  radioon; int /*<<< orphan*/  capability; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;

/* Variables and functions */
 int CMD_ACT_MAC_RX_ON ; 
 int CMD_ACT_MAC_TX_ON ; 
 int /*<<< orphan*/  LBTF_DEB_MACOPS ; 
 int /*<<< orphan*/  RADIO_ON ; 
 int /*<<< orphan*/  WLAN_CAPABILITY_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbtf_private*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw)
{
	struct lbtf_private *priv = hw->priv;

	FUNC0(LBTF_DEB_MACOPS);

	priv->capability = WLAN_CAPABILITY_SHORT_PREAMBLE;
	priv->radioon = RADIO_ON;
	priv->mac_control = CMD_ACT_MAC_RX_ON | CMD_ACT_MAC_TX_ON;
	FUNC2(priv);
	FUNC3(priv);

	FUNC1(LBTF_DEB_MACOPS);
	return 0;
}
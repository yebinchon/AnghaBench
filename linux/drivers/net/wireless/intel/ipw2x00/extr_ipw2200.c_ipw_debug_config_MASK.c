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
struct ipw_priv {int config; int channel; int bssid; int capability; int rates_mask; int /*<<< orphan*/  essid; int /*<<< orphan*/  essid_len; } ;

/* Variables and functions */
 int CAP_PRIVACY_ON ; 
 int CFG_STATIC_BSSID ; 
 int CFG_STATIC_CHANNEL ; 
 int CFG_STATIC_ESSID ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(struct ipw_priv *priv)
{
	FUNC0("Scan completed, no valid APs matched "
		       "[CFG 0x%08X]\n", priv->config);
	if (priv->config & CFG_STATIC_CHANNEL)
		FUNC0("Channel locked to %d\n", priv->channel);
	else
		FUNC0("Channel unlocked.\n");
	if (priv->config & CFG_STATIC_ESSID)
		FUNC0("ESSID locked to '%*pE'\n",
			       priv->essid_len, priv->essid);
	else
		FUNC0("ESSID unlocked.\n");
	if (priv->config & CFG_STATIC_BSSID)
		FUNC0("BSSID locked to %pM\n", priv->bssid);
	else
		FUNC0("BSSID unlocked.\n");
	if (priv->capability & CAP_PRIVACY_ON)
		FUNC0("PRIVACY on\n");
	else
		FUNC0("PRIVACY off\n");
	FUNC0("RATE MASK: 0x%08X\n", priv->rates_mask);
}
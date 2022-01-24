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
struct usb_interface {int dummy; } ;
struct p54u_priv {int /*<<< orphan*/  fw; int /*<<< orphan*/  fw_wait_load; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct ieee80211_hw *dev = FUNC3(intf);
	struct p54u_priv *priv;

	if (!dev)
		return;

	priv = dev->priv;
	FUNC4(&priv->fw_wait_load);
	FUNC1(dev);

	FUNC2(priv->fw);
	FUNC0(dev);
}
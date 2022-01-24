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
struct usb_interface {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct p54u_priv {TYPE_1__ common; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct usb_interface*) ; 
 struct ieee80211_hw* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf)
{
	struct ieee80211_hw *dev = FUNC2(intf);
	struct p54u_priv *priv;
	int err;

	err = FUNC1(intf);
	if (err)
		return err;

	/* reinitialize old device state */
	priv = dev->priv;
	if (priv->common.mode != NL80211_IFTYPE_UNSPECIFIED)
		FUNC0(dev);

	return 0;
}
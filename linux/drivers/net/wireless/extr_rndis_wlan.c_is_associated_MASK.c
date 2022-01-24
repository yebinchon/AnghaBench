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
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {int dummy; } ;
struct rndis_wlan_private {int /*<<< orphan*/  radio_on; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ *) ; 
 struct rndis_wlan_private* FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct usbnet *usbdev)
{
	struct rndis_wlan_private *priv = FUNC1(usbdev);
	u8 bssid[ETH_ALEN];
	int ret;

	if (!priv->radio_on)
		return false;

	ret = FUNC0(usbdev, bssid);

	return (ret == 0 && !FUNC2(bssid));
}
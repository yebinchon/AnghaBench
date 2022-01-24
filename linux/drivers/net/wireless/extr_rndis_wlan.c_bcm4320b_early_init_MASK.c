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
struct usbnet {int dummy; } ;
struct rndis_wlan_private {char* param_country; int param_power_save; int param_power_output; int param_roamtrigger; int param_roamdelta; scalar_t__ param_afterburner; scalar_t__ param_frameburst; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_BCM4320B ; 
 struct rndis_wlan_private* FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct usbnet *usbdev)
{
	struct rndis_wlan_private *priv = FUNC0(usbdev);
	char buf[8];

	FUNC1(usbdev, RNDIS_BCM4320B);

	/* Early initialization settings, setting these won't have effect
	 * if called after generic_rndis_bind().
	 */

	FUNC2(usbdev, "Country", priv->param_country);
	FUNC2(usbdev, "FrameBursting",
					priv->param_frameburst ? "1" : "0");
	FUNC2(usbdev, "Afterburner",
					priv->param_afterburner ? "1" : "0");
	FUNC3(buf, "%d", priv->param_power_save);
	FUNC2(usbdev, "PowerSaveMode", buf);
	FUNC3(buf, "%d", priv->param_power_output);
	FUNC2(usbdev, "PwrOut", buf);
	FUNC3(buf, "%d", priv->param_roamtrigger);
	FUNC2(usbdev, "RoamTrigger", buf);
	FUNC3(buf, "%d", priv->param_roamdelta);
	FUNC2(usbdev, "RoamDelta", buf);

	return 0;
}
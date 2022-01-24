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
typedef  int u8 ;
struct usbnet {int /*<<< orphan*/  phy_mutex; int /*<<< orphan*/  net; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EPAR_PHY_ADR ; 
 int EPCR_EPOS ; 
 int EPCR_ERPRR ; 
 int /*<<< orphan*/  SR_EPAR ; 
 int /*<<< orphan*/  SR_EPCR ; 
 int /*<<< orphan*/  SR_EPDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct usbnet*,int) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev, int phy, u8 reg,
			      __le16 *value)
{
	int ret;

	FUNC0(&dev->phy_mutex);

	FUNC4(dev, SR_EPAR, phy ? (reg | EPAR_PHY_ADR) : reg);
	FUNC4(dev, SR_EPCR, phy ? (EPCR_EPOS | EPCR_ERPRR) : EPCR_ERPRR);

	ret = FUNC5(dev, phy);
	if (ret < 0)
		goto out_unlock;

	FUNC4(dev, SR_EPCR, 0x0);
	ret = FUNC3(dev, SR_EPDR, 2, value);

	FUNC2(dev->net, "read shared %d 0x%02x returned 0x%04x, %d\n",
		   phy, reg, *value, ret);

out_unlock:
	FUNC1(&dev->phy_mutex);
	return ret;
}
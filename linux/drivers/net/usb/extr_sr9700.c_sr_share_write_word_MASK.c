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
struct usbnet {int /*<<< orphan*/  phy_mutex; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EPAR_PHY_ADR ; 
 int EPCR_EPOS ; 
 int EPCR_ERPRW ; 
 int EPCR_WEP ; 
 int /*<<< orphan*/  SR_EPAR ; 
 int /*<<< orphan*/  SR_EPCR ; 
 int /*<<< orphan*/  SR_EPDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usbnet*,int) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev, int phy, u8 reg,
			       __le16 value)
{
	int ret;

	FUNC0(&dev->phy_mutex);

	ret = FUNC2(dev, SR_EPDR, 2, &value);
	if (ret < 0)
		goto out_unlock;

	FUNC3(dev, SR_EPAR, phy ? (reg | EPAR_PHY_ADR) : reg);
	FUNC3(dev, SR_EPCR, phy ? (EPCR_WEP | EPCR_EPOS | EPCR_ERPRW) :
		    (EPCR_WEP | EPCR_ERPRW));

	ret = FUNC4(dev, phy);
	if (ret < 0)
		goto out_unlock;

	FUNC3(dev, SR_EPCR, 0x0);

out_unlock:
	FUNC1(&dev->phy_mutex);
	return ret;
}
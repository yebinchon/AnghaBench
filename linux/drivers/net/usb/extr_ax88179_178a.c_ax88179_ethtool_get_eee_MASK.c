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
struct ethtool_eee {void* lp_advertised; void* advertised; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_EEE_ADV ; 
 int /*<<< orphan*/  MDIO_AN_EEE_LPABLE ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  MDIO_PCS_EEE_ABLE ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct usbnet *dev, struct ethtool_eee *data)
{
	int val;

	/* Get Supported EEE */
	val = FUNC0(dev, MDIO_PCS_EEE_ABLE,
					    MDIO_MMD_PCS);
	if (val < 0)
		return val;
	data->supported = FUNC2(val);

	/* Get advertisement EEE */
	val = FUNC0(dev, MDIO_AN_EEE_ADV,
					    MDIO_MMD_AN);
	if (val < 0)
		return val;
	data->advertised = FUNC1(val);

	/* Get LP advertisement EEE */
	val = FUNC0(dev, MDIO_AN_EEE_LPABLE,
					    MDIO_MMD_AN);
	if (val < 0)
		return val;
	data->lp_advertised = FUNC1(val);

	return 0;
}
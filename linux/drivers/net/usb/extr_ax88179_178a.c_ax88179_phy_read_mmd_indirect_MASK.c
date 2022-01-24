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
typedef  int u16 ;
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX88179_PHY_ID ; 
 int /*<<< orphan*/  AX_ACCESS_PHY ; 
 int /*<<< orphan*/  MII_MMD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int,int) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int
FUNC2(struct usbnet *dev, u16 prtad, u16 devad)
{
	int ret;
	u16 tmp16;

	FUNC0(dev, prtad, devad);

	ret = FUNC1(dev, AX_ACCESS_PHY, AX88179_PHY_ID,
			       MII_MMD_DATA, 2, &tmp16);
	if (ret < 0)
		return ret;

	return tmp16;
}
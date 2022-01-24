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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  mii; int /*<<< orphan*/  data; } ;
struct ethtool_cmd {scalar_t__ duplex; int /*<<< orphan*/  cmd; } ;
struct asix_data {scalar_t__ phymode; scalar_t__ ledmode; } ;

/* Variables and functions */
 int AX88178_MEDIUM_DEFAULT ; 
 int AX_MEDIUM_ENCK ; 
 int AX_MEDIUM_FD ; 
 int AX_MEDIUM_GM ; 
 int AX_MEDIUM_PS ; 
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 scalar_t__ PHY_MODE_MARVELL ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev)
{
	u16 mode;
	struct ethtool_cmd ecmd = { .cmd = ETHTOOL_GSET };
	struct asix_data *data = (struct asix_data *)&dev->data;
	u32 speed;

	FUNC5(dev->net, "ax88178_link_reset()\n");

	FUNC3(&dev->mii, 1, 1);
	FUNC4(&dev->mii, &ecmd);
	mode = AX88178_MEDIUM_DEFAULT;
	speed = FUNC1(&ecmd);

	if (speed == SPEED_1000)
		mode |= AX_MEDIUM_GM;
	else if (speed == SPEED_100)
		mode |= AX_MEDIUM_PS;
	else
		mode &= ~(AX_MEDIUM_PS | AX_MEDIUM_GM);

	mode |= AX_MEDIUM_ENCK;

	if (ecmd.duplex == DUPLEX_FULL)
		mode |= AX_MEDIUM_FD;
	else
		mode &= ~AX_MEDIUM_FD;

	FUNC5(dev->net, "ax88178_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n",
		   speed, ecmd.duplex, mode);

	FUNC0(dev, mode, 0);

	if (data->phymode == PHY_MODE_MARVELL && data->ledmode)
		FUNC2(dev, speed);

	return 0;
}
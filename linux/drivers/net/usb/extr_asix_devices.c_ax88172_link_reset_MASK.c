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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  mii; } ;
struct ethtool_cmd {scalar_t__ duplex; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX88172_MEDIUM_DEFAULT ; 
 int /*<<< orphan*/  AX88172_MEDIUM_FD ; 
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev)
{
	u8 mode;
	struct ethtool_cmd ecmd = { .cmd = ETHTOOL_GSET };

	FUNC2(&dev->mii, 1, 1);
	FUNC3(&dev->mii, &ecmd);
	mode = AX88172_MEDIUM_DEFAULT;

	if (ecmd.duplex != DUPLEX_FULL)
		mode |= ~AX88172_MEDIUM_FD;

	FUNC4(dev->net, "ax88172_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n",
		   FUNC1(&ecmd), ecmd.duplex, mode);

	FUNC0(dev, mode, 0);

	return 0;
}
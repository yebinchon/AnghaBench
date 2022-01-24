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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  mii; } ;
struct ethtool_cmd {int /*<<< orphan*/  duplex; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev)
{
	struct ethtool_cmd ecmd = { .cmd = ETHTOOL_GSET };

	FUNC1(&dev->mii, 1, 1);
	FUNC2(&dev->mii, &ecmd);

	FUNC3(dev->net, "link_reset() speed: %u duplex: %d\n",
		   FUNC0(&ecmd), ecmd.duplex);

	return 0;
}
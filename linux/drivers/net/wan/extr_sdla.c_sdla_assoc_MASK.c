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
struct net_device {scalar_t__ type; scalar_t__ dev_addr; int /*<<< orphan*/  mtu; } ;
struct TYPE_2__ {scalar_t__ station; } ;
struct frad_local {short* dlci; TYPE_1__ config; struct net_device** master; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_DLCI ; 
 int CONFIG_DLCI_MAX ; 
 int EADDRINUSE ; 
 int EINVAL ; 
 int EMLINK ; 
 scalar_t__ FRAD_STATION_CPE ; 
 int /*<<< orphan*/  SDLA_ADD_DLCI ; 
 short FUNC0 (short) ; 
 struct frad_local* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *slave, struct net_device *master)
{
	struct frad_local *flp;
	int               i;

	if (master->type != ARPHRD_DLCI)
		return -EINVAL;

	flp = FUNC1(slave);

	for(i=0;i<CONFIG_DLCI_MAX;i++)
	{
		if (!flp->master[i])
			break;
		if (FUNC0(flp->dlci[i]) == *(short *)(master->dev_addr))
			return -EADDRINUSE;
	} 

	if (i == CONFIG_DLCI_MAX)
		return -EMLINK;  /* #### Alan: Comments on this ?? */


	flp->master[i] = master;
	flp->dlci[i] = -*(short *)(master->dev_addr);
	master->mtu = slave->mtu;

	if (FUNC2(slave)) {
		if (flp->config.station == FRAD_STATION_CPE)
			FUNC4(slave);
		else
			FUNC3(slave, SDLA_ADD_DLCI, 0, 0, master->dev_addr, sizeof(short), NULL, NULL);
	}

	return 0;
}
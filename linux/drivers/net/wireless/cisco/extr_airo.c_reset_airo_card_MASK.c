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
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; struct airo_info* ml_priv; } ;
struct airo_info {int /*<<< orphan*/ * fids; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIRO_DEF_MTU ; 
 int /*<<< orphan*/  FLAG_MPI ; 
 int MAX_FIDS ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*,int) ; 
 scalar_t__ FUNC5 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct airo_info*,int /*<<< orphan*/ ,int) ; 

int FUNC8( struct net_device *dev )
{
	int i;
	struct airo_info *ai = dev->ml_priv;

	if (FUNC4 (dev, 1))
		return -1;

	if ( FUNC5(ai, dev->dev_addr, 1 ) != SUCCESS ) {
		FUNC0(dev->name, "MAC could not be enabled");
		return -1;
	}
	FUNC1(dev->name, "MAC enabled %pM", dev->dev_addr);
	/* Allocate the transmit buffers if needed */
	if (!FUNC6(FLAG_MPI,&ai->flags))
		for( i = 0; i < MAX_FIDS; i++ )
			ai->fids[i] = FUNC7 (ai,AIRO_DEF_MTU,i>=MAX_FIDS/2);

	FUNC2( ai );
	FUNC3(dev);
	return 0;
}
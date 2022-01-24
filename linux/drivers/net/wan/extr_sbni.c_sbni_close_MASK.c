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
struct net_local {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  watchdog; TYPE_1__* second; struct net_device* link; } ;
struct net_device {int /*<<< orphan*/  irq; scalar_t__ base_addr; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ CSR0 ; 
 int EBUSY ; 
 int FL_SECONDARY ; 
 int FL_SLAVE ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct net_local* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10( struct net_device  *dev )
{
	struct net_local  *nl = FUNC5(dev);

	if( nl->second  &&  nl->second->flags & IFF_UP ) {
		FUNC4(dev, "Secondary channel (%s) is active!\n",
			      nl->second->name);
		return  -EBUSY;
	}

#ifdef CONFIG_SBNI_MULTILINE
	if( nl->state & FL_SLAVE )
		emancipate( dev );
	else
		while( nl->link )	/* it's master device! */
			emancipate( nl->link );
#endif

	FUNC8( &nl->lock );

	nl->second = NULL;
	FUNC1( dev );	
	FUNC6( dev );
   
	FUNC0( &nl->watchdog );

	FUNC7( 0, dev->base_addr + CSR0 );

	if( !(nl->state & FL_SECONDARY) )
		FUNC3( dev->irq, dev );
	nl->state &= FL_SECONDARY;

	FUNC9( &nl->lock );
	return 0;
}
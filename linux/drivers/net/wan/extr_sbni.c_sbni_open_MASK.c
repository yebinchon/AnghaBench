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
struct timer_list {scalar_t__ expires; } ;
struct sbni_in_stats {int dummy; } ;
struct net_local {int /*<<< orphan*/  lock; struct net_device* watchdog_dev; int /*<<< orphan*/  in_stats; int /*<<< orphan*/  state; struct net_device* second; struct timer_list watchdog; } ;
struct net_device_stats {int dummy; } ;
struct net_device {int base_addr; scalar_t__ irq; int flags; int /*<<< orphan*/  stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FL_SECONDARY ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int SBNI_MAX_NUM_CARDS ; 
 scalar_t__ SBNI_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct net_local* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 struct net_device** sbni_cards ; 
 int /*<<< orphan*/  sbni_interrupt ; 
 int /*<<< orphan*/  sbni_watchdog ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11( struct net_device  *dev )
{
	struct net_local	*nl = FUNC5(dev);
	struct timer_list	*w  = &nl->watchdog;

	/*
	 * For double ISA adapters within "common irq" mode, we have to
	 * determine whether primary or secondary channel is initialized,
	 * and set the irq handler only in first case.
	 */
	if( dev->base_addr < 0x400 ) {		/* ISA only */
		struct net_device  **p = sbni_cards;
		for( ;  *p  &&  p < sbni_cards + SBNI_MAX_NUM_CARDS;  ++p )
			if( (*p)->irq == dev->irq &&
			    ((*p)->base_addr == dev->base_addr + 4 ||
			     (*p)->base_addr == dev->base_addr - 4) &&
			    (*p)->flags & IFF_UP ) {

				((struct net_local *) (FUNC5(*p)))
					->second = dev;
				FUNC4(dev, "using shared irq with %s\n",
					      (*p)->name);
				nl->state |= FL_SECONDARY;
				goto  handler_attached;
			}
	}

	if( FUNC7(dev->irq, sbni_interrupt, IRQF_SHARED, dev->name, dev) ) {
		FUNC3(dev, "unable to get IRQ %d\n", dev->irq);
		return  -EAGAIN;
	}

handler_attached:

	FUNC8( &nl->lock );
	FUNC2( &dev->stats, 0, sizeof(struct net_device_stats) );
	FUNC2( &nl->in_stats, 0, sizeof(struct sbni_in_stats) );

	FUNC1( dev );

	FUNC6( dev );

	/* set timer watchdog */
	nl->watchdog_dev = dev;
	FUNC10(w, sbni_watchdog, 0);
	w->expires	= jiffies + SBNI_TIMEOUT;
	FUNC0( w );
   
	FUNC9( &nl->lock );
	return 0;
}
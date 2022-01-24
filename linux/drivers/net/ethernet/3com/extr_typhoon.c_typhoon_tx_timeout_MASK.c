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
struct typhoon {int /*<<< orphan*/  ioaddr; TYPE_1__* indexes; int /*<<< orphan*/  txLoRing; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  txLoCleared; } ;

/* Variables and functions */
 int /*<<< orphan*/  NoWait ; 
 int /*<<< orphan*/  WaitNoSleep ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct typhoon* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct typhoon*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct typhoon*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct typhoon*) ; 

__attribute__((used)) static void
FUNC9(struct net_device *dev)
{
	struct typhoon *tp = FUNC1(dev);

	if(FUNC7(tp->ioaddr, WaitNoSleep) < 0) {
		FUNC2(dev, "could not reset in tx timeout\n");
		goto truly_dead;
	}

	/* If we ever start using the Hi ring, it will need cleaning too */
	FUNC5(tp, &tp->txLoRing, &tp->indexes->txLoCleared);
	FUNC6(tp);

	if(FUNC8(tp) < 0) {
		FUNC0(dev, "could not start runtime in tx timeout\n");
		goto truly_dead;
        }

	FUNC4(dev);
	return;

truly_dead:
	/* Reset the hardware, and turn off carrier to avoid more timeouts */
	FUNC7(tp->ioaddr, NoWait);
	FUNC3(dev);
}
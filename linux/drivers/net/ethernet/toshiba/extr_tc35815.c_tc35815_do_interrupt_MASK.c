#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx_ints; int /*<<< orphan*/  rx_ints; } ;
struct tc35815_local {int /*<<< orphan*/  lock; TYPE_2__ lstats; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FATAL_ERROR_INT ; 
 int Int_IntBLEx ; 
 int Int_IntExBD ; 
 int Int_IntFDAEx ; 
 int Int_IntMacRx ; 
 int Int_IntMacTx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct tc35815_local* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct tc35815_local*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, u32 status, int limit)
{
	struct tc35815_local *lp = FUNC1(dev);
	int ret = -1;

	/* Fatal errors... */
	if (status & FATAL_ERROR_INT) {
		FUNC5(dev, status);
		return 0;
	}
	/* recoverable errors */
	if (status & Int_IntFDAEx) {
		if (FUNC2(lp))
			FUNC0(&dev->dev,
				 "Free Descriptor Area Exhausted (%#x).\n",
				 status);
		dev->stats.rx_dropped++;
		ret = 0;
	}
	if (status & Int_IntBLEx) {
		if (FUNC2(lp))
			FUNC0(&dev->dev,
				 "Buffer List Exhausted (%#x).\n",
				 status);
		dev->stats.rx_dropped++;
		ret = 0;
	}
	if (status & Int_IntExBD) {
		if (FUNC2(lp))
			FUNC0(&dev->dev,
				 "Excessive Buffer Descriptors (%#x).\n",
				 status);
		dev->stats.rx_length_errors++;
		ret = 0;
	}

	/* normal notification */
	if (status & Int_IntMacRx) {
		/* Got a packet(s). */
		ret = FUNC6(dev, limit);
		lp->lstats.rx_ints++;
	}
	if (status & Int_IntMacTx) {
		/* Transmit complete. */
		lp->lstats.tx_ints++;
		FUNC3(&lp->lock);
		FUNC7(dev);
		FUNC4(&lp->lock);
		if (ret < 0)
			ret = 0;
	}
	return ret;
}
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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 struct encx24j600_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*,int /*<<< orphan*/ ,struct net_device*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct encx24j600_priv *priv = FUNC1(dev);

	FUNC2(priv, tx_err, dev, "TX timeout at %ld, latency %ld\n",
		  jiffies, jiffies - FUNC0(dev));

	dev->stats.tx_errors++;
	FUNC3(dev);
}
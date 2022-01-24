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
struct qcauart {int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qcauart* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct qcauart *qca = FUNC2(dev);

	FUNC1(qca->net_dev, "Transmit timeout at %ld, latency %ld\n",
		    jiffies, FUNC0(dev));
	dev->stats.tx_errors++;
	dev->stats.tx_dropped++;
}
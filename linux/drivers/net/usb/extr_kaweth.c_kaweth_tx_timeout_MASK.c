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
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct kaweth_device {int /*<<< orphan*/  tx_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct kaweth_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC1(net);

	FUNC0(&net->dev, "%s: Tx timed out. Resetting.\n", net->name);
	net->stats.tx_errors++;
	FUNC2(net);

	FUNC3(kaweth->tx_urb);
}
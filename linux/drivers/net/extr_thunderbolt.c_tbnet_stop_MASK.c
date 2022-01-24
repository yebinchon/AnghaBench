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
struct TYPE_4__ {int /*<<< orphan*/ * ring; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ring; } ;
struct tbnet {TYPE_2__ tx_ring; TYPE_1__ rx_ring; int /*<<< orphan*/  disconnect_work; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tbnet* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tbnet*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct tbnet *net = FUNC2(dev);

	FUNC1(&net->napi);

	FUNC0(&net->disconnect_work);
	FUNC4(net, true);

	FUNC3(net->rx_ring.ring);
	net->rx_ring.ring = NULL;
	FUNC3(net->tx_ring.ring);
	net->tx_ring.ring = NULL;

	return 0;
}
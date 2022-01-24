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
struct TYPE_2__ {int /*<<< orphan*/  ring; } ;
struct tbnet {int login_sent; int login_received; int /*<<< orphan*/  connection_lock; scalar_t__ login_retries; int /*<<< orphan*/  dev; int /*<<< orphan*/  xd; TYPE_1__ tx_ring; TYPE_1__ rx_ring; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int TBNET_LOGOUT_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tbnet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct tbnet*) ; 

__attribute__((used)) static void FUNC10(struct tbnet *net, bool send_logout)
{
	FUNC3(net->dev);
	FUNC4(net->dev);

	FUNC5(net);

	FUNC0(&net->connection_lock);

	if (net->login_sent && net->login_received) {
		int retries = TBNET_LOGOUT_RETRIES;

		while (send_logout && retries-- > 0) {
			int ret = FUNC9(net);
			if (ret != -ETIMEDOUT)
				break;
		}

		FUNC6(net->rx_ring.ring);
		FUNC6(net->tx_ring.ring);
		FUNC8(&net->rx_ring);
		FUNC8(&net->tx_ring);

		if (FUNC7(net->xd))
			FUNC2(net->dev, "failed to disable DMA paths\n");
	}

	net->login_retries = 0;
	net->login_sent = false;
	net->login_received = false;

	FUNC1(&net->connection_lock);
}
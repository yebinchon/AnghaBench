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
struct TYPE_4__ {scalar_t__ addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
struct phy_device {TYPE_2__ mdio; struct dp83640_private* priv; } ;
struct dp83640_private {int /*<<< orphan*/  list; struct dp83640_clock* clock; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rxpool; TYPE_1__* rx_pool_data; int /*<<< orphan*/  rxts; int /*<<< orphan*/  ts_work; struct phy_device* phydev; } ;
struct dp83640_clock {struct dp83640_private* chosen; int /*<<< orphan*/  phylist; int /*<<< orphan*/  ptp_clock; int /*<<< orphan*/  caps; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ BROADCAST_ADDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_RXTS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dp83640_clock*,struct phy_device*) ; 
 struct dp83640_clock* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dp83640_clock*) ; 
 int /*<<< orphan*/  FUNC7 (struct dp83640_private*) ; 
 struct dp83640_private* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_timestamp_work ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct phy_device *phydev)
{
	struct dp83640_clock *clock;
	struct dp83640_private *dp83640;
	int err = -ENOMEM, i;

	if (phydev->mdio.addr == BROADCAST_ADDR)
		return 0;

	clock = FUNC5(phydev->mdio.bus);
	if (!clock)
		goto no_clock;

	dp83640 = FUNC8(sizeof(struct dp83640_private), GFP_KERNEL);
	if (!dp83640)
		goto no_memory;

	dp83640->phydev = phydev;
	FUNC0(&dp83640->ts_work, rx_timestamp_work);

	FUNC1(&dp83640->rxts);
	FUNC1(&dp83640->rxpool);
	for (i = 0; i < MAX_RXTS; i++)
		FUNC9(&dp83640->rx_pool_data[i].list, &dp83640->rxpool);

	phydev->priv = dp83640;

	FUNC13(&dp83640->rx_lock);
	FUNC12(&dp83640->rx_queue);
	FUNC12(&dp83640->tx_queue);

	dp83640->clock = clock;

	if (FUNC4(clock, phydev)) {
		clock->chosen = dp83640;
		clock->ptp_clock = FUNC11(&clock->caps,
						      &phydev->mdio.dev);
		if (FUNC2(clock->ptp_clock)) {
			err = FUNC3(clock->ptp_clock);
			goto no_register;
		}
	} else
		FUNC10(&dp83640->list, &clock->phylist);

	FUNC6(clock);
	return 0;

no_register:
	clock->chosen = NULL;
	FUNC7(dp83640);
no_memory:
	FUNC6(clock);
no_clock:
	return err;
}
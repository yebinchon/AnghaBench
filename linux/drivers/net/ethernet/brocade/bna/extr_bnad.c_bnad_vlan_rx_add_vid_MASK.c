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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct bnad {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  active_vlans; TYPE_1__* rx_info; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct net_device *netdev, __be16 proto, u16 vid)
{
	struct bnad *bnad = FUNC3(netdev);
	unsigned long flags;

	if (!bnad->rx_info[0].rx)
		return 0;

	FUNC1(&bnad->conf_mutex);

	FUNC5(&bnad->bna_lock, flags);
	FUNC0(bnad->rx_info[0].rx, vid);
	FUNC4(vid, bnad->active_vlans);
	FUNC6(&bnad->bna_lock, flags);

	FUNC2(&bnad->conf_mutex);

	return 0;
}
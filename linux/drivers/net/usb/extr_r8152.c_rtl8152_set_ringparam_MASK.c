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
struct r8152 {int rx_pending; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTL8152_MAX_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
				 struct ethtool_ringparam *ring)
{
	struct r8152 *tp = FUNC2(netdev);

	if (ring->rx_pending < (RTL8152_MAX_RX * 2))
		return -EINVAL;

	if (tp->rx_pending != ring->rx_pending) {
		FUNC0(&tp->napi);
		tp->rx_pending = ring->rx_pending;
		FUNC1(&tp->napi);
	}

	return 0;
}
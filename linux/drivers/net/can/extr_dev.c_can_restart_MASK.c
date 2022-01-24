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
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  restarts; } ;
struct can_priv {int (* do_set_mode ) (struct net_device*,int /*<<< orphan*/ ) ;TYPE_1__ can_stats; } ;
struct can_frame {scalar_t__ can_dlc; int /*<<< orphan*/  can_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAN_ERR_RESTARTED ; 
 int /*<<< orphan*/  CAN_MODE_START ; 
 int ENOMEM ; 
 struct sk_buff* FUNC1 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 struct can_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct can_priv *priv = FUNC5(dev);
	struct net_device_stats *stats = &dev->stats;
	struct sk_buff *skb;
	struct can_frame *cf;
	int err;

	FUNC0(FUNC6(dev));

	/* No synchronization needed because the device is bus-off and
	 * no messages can come in or go out.
	 */
	FUNC2(dev);

	/* send restart message upstream */
	skb = FUNC1(dev, &cf);
	if (!skb) {
		err = -ENOMEM;
		goto restart;
	}
	cf->can_id |= CAN_ERR_RESTARTED;

	FUNC8(skb);

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;

restart:
	FUNC3(dev, "restarted\n");
	priv->can_stats.restarts++;

	/* Now restart the device */
	err = priv->do_set_mode(dev, CAN_MODE_START);

	FUNC7(dev);
	if (err)
		FUNC4(dev, "Error %d during restart", err);
}
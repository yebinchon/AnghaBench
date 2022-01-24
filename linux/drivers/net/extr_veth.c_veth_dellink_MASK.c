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
struct veth_priv {int /*<<< orphan*/  peer; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct veth_priv* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct list_head*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct list_head *head)
{
	struct veth_priv *priv;
	struct net_device *peer;

	priv = FUNC1(dev);
	peer = FUNC2(priv->peer);

	/* Note : dellink() is called from default_device_exit_batch(),
	 * before a rcu_synchronize() point. The devices are guaranteed
	 * not being freed before one RCU grace period.
	 */
	FUNC0(priv->peer, NULL);
	FUNC3(dev, head);

	if (peer) {
		priv = FUNC1(peer);
		FUNC0(priv->peer, NULL);
		FUNC3(peer, head);
	}
}
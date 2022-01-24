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
struct veth_priv {int requested_headroom; int /*<<< orphan*/  peer; } ;
struct net_device {int needed_headroom; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 struct veth_priv* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int new_hr)
{
	struct veth_priv *peer_priv, *priv = FUNC1(dev);
	struct net_device *peer;

	if (new_hr < 0)
		new_hr = 0;

	FUNC3();
	peer = FUNC2(priv->peer);
	if (FUNC5(!peer))
		goto out;

	peer_priv = FUNC1(peer);
	priv->requested_headroom = new_hr;
	new_hr = FUNC0(priv->requested_headroom, peer_priv->requested_headroom);
	dev->needed_headroom = new_hr;
	peer->needed_headroom = new_hr;

out:
	FUNC4();
}
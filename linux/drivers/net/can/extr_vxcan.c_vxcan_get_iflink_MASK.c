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
struct vxcan_priv {int /*<<< orphan*/  peer; } ;
struct net_device {int ifindex; } ;

/* Variables and functions */
 struct vxcan_priv* FUNC0 (struct net_device const*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(const struct net_device *dev)
{
	struct vxcan_priv *priv = FUNC0(dev);
	struct net_device *peer;
	int iflink;

	FUNC2();
	peer = FUNC1(priv->peer);
	iflink = peer ? peer->ifindex : 0;
	FUNC3();

	return iflink;
}
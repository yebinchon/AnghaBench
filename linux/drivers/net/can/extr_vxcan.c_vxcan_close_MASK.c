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
struct net_device {int dummy; } ;

/* Variables and functions */
 struct vxcan_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct vxcan_priv *priv = FUNC0(dev);
	struct net_device *peer = FUNC2(priv->peer);

	FUNC1(dev);
	if (peer)
		FUNC1(peer);

	return 0;
}
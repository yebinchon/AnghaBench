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
typedef  int /*<<< orphan*/  u8 ;
struct rmnet_priv {struct net_device* real_dev; } ;
struct rmnet_port {int dummy; } ;
struct rmnet_endpoint {int /*<<< orphan*/  hlnode; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rmnet_endpoint*) ; 
 struct rmnet_priv* FUNC2 (struct net_device*) ; 
 struct rmnet_endpoint* FUNC3 (struct rmnet_port*,int /*<<< orphan*/ ) ; 
 struct rmnet_port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct rmnet_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct rmnet_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rmnet_port*,struct rmnet_endpoint*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct list_head*) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev, struct list_head *head)
{
	struct rmnet_priv *priv = FUNC2(dev);
	struct net_device *real_dev;
	struct rmnet_endpoint *ep;
	struct rmnet_port *port;
	u8 mux_id;

	real_dev = priv->real_dev;

	if (!real_dev || !FUNC5(real_dev))
		return;

	port = FUNC4(real_dev);

	mux_id = FUNC9(dev);

	ep = FUNC3(port, mux_id);
	if (ep) {
		FUNC0(&ep->hlnode);
		FUNC6(dev, port);
		FUNC8(mux_id, port, ep);
		FUNC1(ep);
	}
	FUNC7(real_dev, port);

	FUNC10(dev, head);
}
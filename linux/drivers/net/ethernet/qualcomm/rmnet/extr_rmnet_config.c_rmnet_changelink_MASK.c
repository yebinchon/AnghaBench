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
typedef  size_t u16 ;
struct rmnet_priv {size_t mux_id; } ;
struct rmnet_port {int data_format; int /*<<< orphan*/ * muxed_ep; } ;
struct rmnet_endpoint {size_t mux_id; int /*<<< orphan*/  hlnode; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ifla_rmnet_flags {int flags; int mask; } ;

/* Variables and functions */
 int ENODEV ; 
 size_t IFLA_LINK ; 
 size_t IFLA_RMNET_FLAGS ; 
 size_t IFLA_RMNET_MUX_ID ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rmnet_priv* FUNC4 (struct net_device*) ; 
 struct ifla_rmnet_flags* FUNC5 (struct nlattr*) ; 
 size_t FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 struct rmnet_endpoint* FUNC8 (struct rmnet_port*,size_t) ; 
 struct rmnet_port* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, struct nlattr *tb[],
			    struct nlattr *data[],
			    struct netlink_ext_ack *extack)
{
	struct rmnet_priv *priv = FUNC4(dev);
	struct net_device *real_dev;
	struct rmnet_endpoint *ep;
	struct rmnet_port *port;
	u16 mux_id;

	if (!dev)
		return -ENODEV;

	real_dev = FUNC0(FUNC1(dev),
				      FUNC7(tb[IFLA_LINK]));

	if (!real_dev || !FUNC10(real_dev))
		return -ENODEV;

	port = FUNC9(real_dev);

	if (data[IFLA_RMNET_MUX_ID]) {
		mux_id = FUNC6(data[IFLA_RMNET_MUX_ID]);
		ep = FUNC8(port, priv->mux_id);
		if (!ep)
			return -ENODEV;

		FUNC3(&ep->hlnode);
		FUNC2(&ep->hlnode, &port->muxed_ep[mux_id]);

		ep->mux_id = mux_id;
		priv->mux_id = mux_id;
	}

	if (data[IFLA_RMNET_FLAGS]) {
		struct ifla_rmnet_flags *flags;

		flags = FUNC5(data[IFLA_RMNET_FLAGS]);
		port->data_format = flags->flags & flags->mask;
	}

	return 0;
}
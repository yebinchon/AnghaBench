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
typedef  int u32 ;
typedef  size_t u16 ;
struct rmnet_port {int rmnet_mode; int data_format; int /*<<< orphan*/ * muxed_ep; } ;
struct rmnet_endpoint {int /*<<< orphan*/  hlnode; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifla_rmnet_flags {int flags; int mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t IFLA_LINK ; 
 size_t IFLA_RMNET_FLAGS ; 
 size_t IFLA_RMNET_MUX_ID ; 
 int RMNET_EPMODE_VND ; 
 int RMNET_FLAGS_INGRESS_DEAGGREGATION ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rmnet_endpoint*) ; 
 struct rmnet_endpoint* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 struct ifla_rmnet_flags* FUNC5 (struct nlattr*) ; 
 size_t FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 struct rmnet_port* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct rmnet_port*) ; 
 int FUNC11 (size_t,struct net_device*,struct rmnet_port*,struct net_device*,struct rmnet_endpoint*) ; 

__attribute__((used)) static int FUNC12(struct net *src_net, struct net_device *dev,
			 struct nlattr *tb[], struct nlattr *data[],
			 struct netlink_ext_ack *extack)
{
	u32 data_format = RMNET_FLAGS_INGRESS_DEAGGREGATION;
	struct net_device *real_dev;
	int mode = RMNET_EPMODE_VND;
	struct rmnet_endpoint *ep;
	struct rmnet_port *port;
	int err = 0;
	u16 mux_id;

	real_dev = FUNC0(src_net, FUNC7(tb[IFLA_LINK]));
	if (!real_dev || !dev)
		return -ENODEV;

	if (!data[IFLA_RMNET_MUX_ID])
		return -EINVAL;

	ep = FUNC3(sizeof(*ep), GFP_ATOMIC);
	if (!ep)
		return -ENOMEM;

	mux_id = FUNC6(data[IFLA_RMNET_MUX_ID]);

	err = FUNC9(real_dev);
	if (err)
		goto err0;

	port = FUNC8(real_dev);
	err = FUNC11(mux_id, dev, port, real_dev, ep);
	if (err)
		goto err1;

	port->rmnet_mode = mode;

	FUNC1(&ep->hlnode, &port->muxed_ep[mux_id]);

	if (data[IFLA_RMNET_FLAGS]) {
		struct ifla_rmnet_flags *flags;

		flags = FUNC5(data[IFLA_RMNET_FLAGS]);
		data_format = flags->flags & flags->mask;
	}

	FUNC4(dev, "data format [0x%08X]\n", data_format);
	port->data_format = data_format;

	return 0;

err1:
	FUNC10(real_dev, port);
err0:
	FUNC2(ep);
	return err;
}
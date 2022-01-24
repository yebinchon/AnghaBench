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
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct rmnet_port {int dummy; } ;
struct rmnet_endpoint {struct net_device* egress_dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RMNET_MAP_COMMAND_ACK ; 
 scalar_t__ RMNET_MAP_COMMAND_UNSUPPORTED ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ RMNET_MAX_LOGICAL_EP ; 
 scalar_t__ RX_HANDLER_CONSUMED ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct rmnet_endpoint* FUNC2 (struct rmnet_port*,scalar_t__) ; 
 int FUNC3 (struct net_device*,int) ; 

__attribute__((used)) static u8 FUNC4(struct sk_buff *skb,
				    struct rmnet_port *port,
				    int enable)
{
	struct rmnet_endpoint *ep;
	struct net_device *vnd;
	u8 mux_id;
	int r;

	mux_id = FUNC0(skb);

	if (mux_id >= RMNET_MAX_LOGICAL_EP) {
		FUNC1(skb);
		return RX_HANDLER_CONSUMED;
	}

	ep = FUNC2(port, mux_id);
	if (!ep) {
		FUNC1(skb);
		return RX_HANDLER_CONSUMED;
	}

	vnd = ep->egress_dev;

	/* Ignore the ip family and pass the sequence number for both v4 and v6
	 * sequence. User space does not support creating dedicated flows for
	 * the 2 protocols
	 */
	r = FUNC3(vnd, enable);
	if (r) {
		FUNC1(skb);
		return RMNET_MAP_COMMAND_UNSUPPORTED;
	} else {
		return RMNET_MAP_COMMAND_ACK;
	}
}
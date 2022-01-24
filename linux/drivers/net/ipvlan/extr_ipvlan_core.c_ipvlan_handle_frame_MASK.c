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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct ipvl_port {int mode; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;

/* Variables and functions */
#define  IPVLAN_MODE_L2 130 
#define  IPVLAN_MODE_L3 129 
#define  IPVLAN_MODE_L3S 128 
 int /*<<< orphan*/  RX_HANDLER_CONSUMED ; 
 int /*<<< orphan*/  RX_HANDLER_PASS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff**,struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff**,struct ipvl_port*) ; 
 struct ipvl_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

rx_handler_result_t FUNC5(struct sk_buff **pskb)
{
	struct sk_buff *skb = *pskb;
	struct ipvl_port *port = FUNC3(skb->dev);

	if (!port)
		return RX_HANDLER_PASS;

	switch (port->mode) {
	case IPVLAN_MODE_L2:
		return FUNC1(pskb, port);
	case IPVLAN_MODE_L3:
		return FUNC2(pskb, port);
#ifdef CONFIG_IPVLAN_L3S
	case IPVLAN_MODE_L3S:
		return RX_HANDLER_PASS;
#endif
	}

	/* Should not reach here */
	FUNC0(true, "ipvlan_handle_frame() called for mode = [%hx]\n",
			  port->mode);
	FUNC4(skb);
	return RX_HANDLER_CONSUMED;
}
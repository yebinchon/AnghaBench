#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct can_frame {scalar_t__ can_dlc; } ;
struct TYPE_4__ {int state; } ;
struct at91_priv {TYPE_2__ can; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int AT91_IRQ_BOFF ; 
 int AT91_IRQ_ERRA ; 
 int AT91_IRQ_ERRP ; 
 int AT91_IRQ_WARN ; 
 int /*<<< orphan*/  AT91_SR ; 
 int CAN_STATE_BUS_OFF ; 
 int CAN_STATE_ERROR_ACTIVE ; 
 int CAN_STATE_ERROR_PASSIVE ; 
 int CAN_STATE_ERROR_WARNING ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int FUNC1 (struct net_device*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct can_frame*,int) ; 
 scalar_t__ FUNC3 (struct at91_priv*) ; 
 int FUNC4 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct at91_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct at91_priv *priv = FUNC7(dev);
	struct sk_buff *skb;
	struct can_frame *cf;
	enum can_state new_state;
	u32 reg_sr;
	int err;

	if (FUNC3(priv)) {
		reg_sr = FUNC4(priv, AT91_SR);

		/* we need to look at the unmasked reg_sr */
		if (FUNC9(reg_sr & AT91_IRQ_BOFF))
			new_state = CAN_STATE_BUS_OFF;
		else if (FUNC9(reg_sr & AT91_IRQ_ERRP))
			new_state = CAN_STATE_ERROR_PASSIVE;
		else if (FUNC9(reg_sr & AT91_IRQ_WARN))
			new_state = CAN_STATE_ERROR_WARNING;
		else if (FUNC5(reg_sr & AT91_IRQ_ERRA))
			new_state = CAN_STATE_ERROR_ACTIVE;
		else {
			FUNC6(dev, "BUG! hardware in undefined state\n");
			return;
		}
	} else {
		err = FUNC1(dev, &new_state);
		if (err)
			return;
	}

	/* state hasn't changed */
	if (FUNC5(new_state == priv->can.state))
		return;

	skb = FUNC0(dev, &cf);
	if (FUNC9(!skb))
		return;

	FUNC2(dev, cf, new_state);

	dev->stats.rx_packets++;
	dev->stats.rx_bytes += cf->can_dlc;
	FUNC8(skb);

	priv->can.state = new_state;
}
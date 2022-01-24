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
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int /*<<< orphan*/ * data; int /*<<< orphan*/  can_id; } ;
struct c_can_priv {int /*<<< orphan*/  (* write_reg ) (struct c_can_priv*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_CRTL ; 
 int /*<<< orphan*/  CAN_ERR_CRTL_RX_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IF_COMM_CONTROL ; 
 int IF_MCONT_INTPND ; 
 int IF_MCONT_MSGLST ; 
 int IF_MCONT_NEWDAT ; 
 int /*<<< orphan*/  MSGCTRL_REG ; 
 struct sk_buff* FUNC1 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int,int /*<<< orphan*/ ) ; 
 struct c_can_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				     int iface, int objno, u32 ctrl)
{
	struct net_device_stats *stats = &dev->stats;
	struct c_can_priv *priv = FUNC3(dev);
	struct can_frame *frame;
	struct sk_buff *skb;

	ctrl &= ~(IF_MCONT_MSGLST | IF_MCONT_INTPND | IF_MCONT_NEWDAT);
	priv->write_reg(priv, FUNC0(MSGCTRL_REG, iface), ctrl);
	FUNC2(dev, iface, objno, IF_COMM_CONTROL);

	stats->rx_errors++;
	stats->rx_over_errors++;

	/* create an error msg */
	skb = FUNC1(dev, &frame);
	if (FUNC6(!skb))
		return 0;

	frame->can_id |= CAN_ERR_CRTL;
	frame->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;

	FUNC4(skb);
	return 1;
}
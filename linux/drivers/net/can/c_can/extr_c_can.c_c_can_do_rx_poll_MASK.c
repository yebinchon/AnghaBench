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
struct net_device {int dummy; } ;
struct c_can_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  CAN_LED_EVENT_RX ; 
 int C_CAN_MSG_OBJ_RX_LAST ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct c_can_priv*) ; 
 int FUNC3 (struct net_device*,struct c_can_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct c_can_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int quota)
{
	struct c_can_priv *priv = FUNC5(dev);
	u32 pkts = 0, pend = 0, toread, n;

	/*
	 * It is faster to read only one 16bit register. This is only possible
	 * for a maximum number of 16 objects.
	 */
	FUNC0(C_CAN_MSG_OBJ_RX_LAST > 16,
			"Implementation does not support more message objects than 16");

	while (quota > 0) {
		if (!pend) {
			pend = FUNC2(priv);
			if (!pend)
				break;
			/*
			 * If the pending field has a gap, handle the
			 * bits above the gap first.
			 */
			toread = FUNC1(pend);
		} else {
			toread = pend;
		}
		/* Remove the bits from pend */
		pend &= ~toread;
		/* Read the objects */
		n = FUNC3(dev, priv, toread, quota);
		pkts += n;
		quota -= n;
	}

	if (pkts)
		FUNC4(dev, CAN_LED_EVENT_RX);

	return pkts;
}
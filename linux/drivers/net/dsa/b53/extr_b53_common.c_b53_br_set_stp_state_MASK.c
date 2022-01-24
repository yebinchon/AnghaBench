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
typedef  int u8 ;
struct dsa_switch {int /*<<< orphan*/  dev; struct b53_device* priv; } ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_CTRL_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  BR_STATE_BLOCKING 132 
#define  BR_STATE_DISABLED 131 
#define  BR_STATE_FORWARDING 130 
#define  BR_STATE_LEARNING 129 
#define  BR_STATE_LISTENING 128 
 int PORT_CTRL_BLOCK_STATE ; 
 int PORT_CTRL_DIS_STATE ; 
 int PORT_CTRL_FWD_STATE ; 
 int PORT_CTRL_LEARN_STATE ; 
 int PORT_CTRL_LISTEN_STATE ; 
 int PORT_CTRL_STP_STATE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC4(struct dsa_switch *ds, int port, u8 state)
{
	struct b53_device *dev = ds->priv;
	u8 hw_state;
	u8 reg;

	switch (state) {
	case BR_STATE_DISABLED:
		hw_state = PORT_CTRL_DIS_STATE;
		break;
	case BR_STATE_LISTENING:
		hw_state = PORT_CTRL_LISTEN_STATE;
		break;
	case BR_STATE_LEARNING:
		hw_state = PORT_CTRL_LEARN_STATE;
		break;
	case BR_STATE_FORWARDING:
		hw_state = PORT_CTRL_FWD_STATE;
		break;
	case BR_STATE_BLOCKING:
		hw_state = PORT_CTRL_BLOCK_STATE;
		break;
	default:
		FUNC3(ds->dev, "invalid STP state: %d\n", state);
		return;
	}

	FUNC1(dev, B53_CTRL_PAGE, FUNC0(port), &reg);
	reg &= ~PORT_CTRL_STP_STATE_MASK;
	reg |= hw_state;
	FUNC2(dev, B53_CTRL_PAGE, FUNC0(port), reg);
}
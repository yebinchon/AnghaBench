#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct c_can_priv {scalar_t__ tx_dir; scalar_t__ rxmasked; int /*<<< orphan*/  tx_active; int /*<<< orphan*/  (* write_reg ) (struct c_can_priv*,int /*<<< orphan*/ ,int) ;TYPE_1__ can; } ;

/* Variables and functions */
 int CAN_CTRLMODE_LISTENONLY ; 
 int CAN_CTRLMODE_LOOPBACK ; 
 int CONTROL_ENABLE_AR ; 
 int CONTROL_TEST ; 
 int /*<<< orphan*/  C_CAN_CTRL_REG ; 
 int /*<<< orphan*/  C_CAN_STS_REG ; 
 int /*<<< orphan*/  C_CAN_TEST_REG ; 
 int LEC_UNUSED ; 
 int TEST_LBACK ; 
 int TEST_SILENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 struct c_can_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct c_can_priv *priv = FUNC4(dev);
	int err;

	err = FUNC3(dev);
	if (err)
		return err;

	/* enable automatic retransmission */
	priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_ENABLE_AR);

	if ((priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY) &&
	    (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)) {
		/* loopback + silent mode : useful for hot self-test */
		priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_TEST);
		priv->write_reg(priv, C_CAN_TEST_REG, TEST_LBACK | TEST_SILENT);
	} else if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK) {
		/* loopback mode : useful for self-test function */
		priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_TEST);
		priv->write_reg(priv, C_CAN_TEST_REG, TEST_LBACK);
	} else if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY) {
		/* silent mode : bus-monitoring mode */
		priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_TEST);
		priv->write_reg(priv, C_CAN_TEST_REG, TEST_SILENT);
	}

	/* configure message objects */
	FUNC1(dev);

	/* set a `lec` value so that we can check for updates later */
	priv->write_reg(priv, C_CAN_STS_REG, LEC_UNUSED);

	/* Clear all internal status */
	FUNC0(&priv->tx_active, 0);
	priv->rxmasked = 0;
	priv->tx_dir = 0;

	/* set bittiming params */
	return FUNC2(dev);
}
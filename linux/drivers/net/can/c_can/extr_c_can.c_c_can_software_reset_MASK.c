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
struct net_device {int dummy; } ;
struct c_can_priv {scalar_t__ type; int (* read_reg ) (struct c_can_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg ) (struct c_can_priv*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ BOSCH_D_CAN ; 
 int CONTROL_INIT ; 
 int CONTROL_SWR ; 
 int /*<<< orphan*/  C_CAN_CTRL_REG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct c_can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct c_can_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct c_can_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct c_can_priv *priv = FUNC2(dev);
	int retry = 0;

	if (priv->type != BOSCH_D_CAN)
		return 0;

	priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_SWR | CONTROL_INIT);
	while (priv->read_reg(priv, C_CAN_CTRL_REG) & CONTROL_SWR) {
		FUNC0(20);
		if (retry++ > 100) {
			FUNC1(dev, "CCTRL: software reset failed\n");
			return -EIO;
		}
	}

	return 0;
}
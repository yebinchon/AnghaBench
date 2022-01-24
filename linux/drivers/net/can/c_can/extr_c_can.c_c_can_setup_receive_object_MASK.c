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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct c_can_priv {int /*<<< orphan*/  (* write_reg ) (struct c_can_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg32 ) (struct c_can_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ARB1_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IF_ARB_MSGVAL ; 
 int /*<<< orphan*/  IF_COMM_RCV_SETUP ; 
 int /*<<< orphan*/  MASK1_REG ; 
 int /*<<< orphan*/  MSGCTRL_REG ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct c_can_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct c_can_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct c_can_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct c_can_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, int iface,
				       u32 obj, u32 mask, u32 id, u32 mcont)
{
	struct c_can_priv *priv = FUNC3(dev);

	mask |= FUNC0(29);
	priv->write_reg32(priv, FUNC1(MASK1_REG, iface), mask);

	id |= IF_ARB_MSGVAL;
	priv->write_reg32(priv, FUNC1(ARB1_REG, iface), id);

	priv->write_reg(priv, FUNC1(MSGCTRL_REG, iface), mcont);
	FUNC2(dev, iface, obj, IF_COMM_RCV_SETUP);
}
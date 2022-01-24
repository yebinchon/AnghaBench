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
struct c_can_priv {int (* read_reg ) (struct c_can_priv*,int) ;int /*<<< orphan*/  (* write_reg32 ) (struct c_can_priv*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMREQ_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int IF_COMR_BUSY ; 
 int MIN_TIMEOUT_VALUE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct c_can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct c_can_priv*,int,int) ; 
 int FUNC4 (struct c_can_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int iface, u32 cmd, u32 obj)
{
	struct c_can_priv *priv = FUNC2(dev);
	int cnt, reg = FUNC0(COMREQ_REG, iface);

	priv->write_reg32(priv, reg, (cmd << 16) | obj);

	for (cnt = MIN_TIMEOUT_VALUE; cnt; cnt--) {
		if (!(priv->read_reg(priv, reg) & IF_COMR_BUSY))
			return;
		FUNC5(1);
	}
	FUNC1(dev, "Updating object timed out\n");

}
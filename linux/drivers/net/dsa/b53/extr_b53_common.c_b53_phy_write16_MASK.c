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
typedef  int /*<<< orphan*/  u16 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* phy_write16 ) (struct b53_device*,int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b53_device*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dsa_switch *ds, int addr, int reg, u16 val)
{
	struct b53_device *priv = ds->priv;

	if (priv->ops->phy_write16)
		return priv->ops->phy_write16(priv, addr, reg, val);

	return FUNC1(priv, FUNC0(addr), reg * 2, val);
}
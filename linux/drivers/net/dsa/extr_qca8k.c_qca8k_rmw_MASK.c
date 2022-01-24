#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct qca8k_priv {TYPE_1__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MUTEX_NESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int*,int*) ; 

__attribute__((used)) static u32
FUNC6(struct qca8k_priv *priv, u32 reg, u32 mask, u32 val)
{
	u16 r1, r2, page;
	u32 ret;

	FUNC5(reg, &r1, &r2, &page);

	FUNC0(&priv->bus->mdio_lock, MDIO_MUTEX_NESTED);

	FUNC4(priv->bus, page);
	ret = FUNC2(priv->bus, 0x10 | r2, r1);
	ret &= ~mask;
	ret |= val;
	FUNC3(priv->bus, 0x10 | r2, r1, ret);

	FUNC1(&priv->bus->mdio_lock);

	return ret;
}
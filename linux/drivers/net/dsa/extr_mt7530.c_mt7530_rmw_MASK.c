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
struct mt7530_priv {struct mii_bus* bus; } ;
struct mii_bus {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MUTEX_NESTED ; 
 int /*<<< orphan*/  FUNC0 (struct mt7530_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mt7530_priv *priv, u32 reg,
	   u32 mask, u32 set)
{
	struct mii_bus *bus = priv->bus;
	u32 val;

	FUNC2(&bus->mdio_lock, MDIO_MUTEX_NESTED);

	val = FUNC0(priv, reg);
	val &= ~mask;
	val |= set;
	FUNC1(priv, reg, val);

	FUNC3(&bus->mdio_lock);
}
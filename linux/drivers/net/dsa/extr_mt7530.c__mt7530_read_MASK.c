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
typedef  int /*<<< orphan*/  u32 ;
struct mt7530_dummy_poll {int /*<<< orphan*/  reg; TYPE_1__* priv; } ;
struct mii_bus {int /*<<< orphan*/  mdio_lock; } ;
struct TYPE_2__ {struct mii_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MUTEX_NESTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32
FUNC3(struct mt7530_dummy_poll *p)
{
	struct mii_bus		*bus = p->priv->bus;
	u32 val;

	FUNC1(&bus->mdio_lock, MDIO_MUTEX_NESTED);

	val = FUNC0(p->priv, p->reg);

	FUNC2(&bus->mdio_lock);

	return val;
}
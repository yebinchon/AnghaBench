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
typedef  int /*<<< orphan*/  u16 ;
struct tg3 {int /*<<< orphan*/  lock; } ;
struct mii_bus {struct tg3* priv; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct tg3*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bp, int mii_id, int reg, u16 val)
{
	struct tg3 *tp = bp->priv;
	u32 ret = 0;

	FUNC1(&tp->lock);

	if (FUNC0(tp, mii_id, reg, val))
		ret = -EIO;

	FUNC2(&tp->lock);

	return ret;
}
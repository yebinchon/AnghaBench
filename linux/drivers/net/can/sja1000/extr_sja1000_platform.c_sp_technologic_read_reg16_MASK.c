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
typedef  int /*<<< orphan*/  u8 ;
struct technologic_priv {int /*<<< orphan*/  io_lock; } ;
struct sja1000_priv {scalar_t__ reg_base; struct technologic_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u8 FUNC4(const struct sja1000_priv *priv, int reg)
{
	struct technologic_priv *tp = priv->priv;
	unsigned long flags;
	u8 val;

	FUNC2(&tp->io_lock, flags);
	FUNC1(reg, priv->reg_base + 0);
	val = FUNC0(priv->reg_base + 2);
	FUNC3(&tp->io_lock, flags);

	return val;
}
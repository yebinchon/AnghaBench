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
typedef  int u8 ;
struct technologic_priv {int /*<<< orphan*/  io_lock; } ;
struct sja1000_priv {scalar_t__ reg_base; struct technologic_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(const struct sja1000_priv *priv,
				       int reg, u8 val)
{
	struct technologic_priv *tp = priv->priv;
	unsigned long flags;

	FUNC1(&tp->io_lock, flags);
	FUNC0(reg, priv->reg_base + 0);
	FUNC0(val, priv->reg_base + 2);
	FUNC2(&tp->io_lock, flags);
}
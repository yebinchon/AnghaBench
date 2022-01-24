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
struct sja1000_priv {int /*<<< orphan*/  cmdreg_lock; int /*<<< orphan*/  (* read_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SJA1000_CMR ; 
 int /*<<< orphan*/  SJA1000_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sja1000_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sja1000_priv *priv, u8 val)
{
	unsigned long flags;

	/*
	 * The command register needs some locking and time to settle
	 * the write_reg() operation - especially on SMP systems.
	 */
	FUNC0(&priv->cmdreg_lock, flags);
	priv->write_reg(priv, SJA1000_CMR, val);
	priv->read_reg(priv, SJA1000_SR);
	FUNC1(&priv->cmdreg_lock, flags);
}
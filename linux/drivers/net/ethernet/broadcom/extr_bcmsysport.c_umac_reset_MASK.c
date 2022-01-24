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
struct bcm_sysport_priv {scalar_t__ is_lite; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SW_RESET ; 
 int /*<<< orphan*/  UMAC_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct bcm_sysport_priv *priv)
{
	u32 reg;

	if (priv->is_lite)
		return;

	reg = FUNC1(priv, UMAC_CMD);
	reg |= CMD_SW_RESET;
	FUNC2(priv, reg, UMAC_CMD);
	FUNC0(10);
	reg = FUNC1(priv, UMAC_CMD);
	reg &= ~CMD_SW_RESET;
	FUNC2(priv, reg, UMAC_CMD);
}
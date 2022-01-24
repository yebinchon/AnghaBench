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
struct unimac_mdio_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_CMD ; 
 int /*<<< orphan*/  MDIO_START_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct unimac_mdio_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct unimac_mdio_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct unimac_mdio_priv *priv)
{
	u32 reg;

	reg = FUNC0(priv, MDIO_CMD);
	reg |= MDIO_START_BUSY;
	FUNC1(priv, reg, MDIO_CMD);
}
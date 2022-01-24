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
struct bcmgenet_priv {scalar_t__ crc_fwd_en; int /*<<< orphan*/  dev; } ;
typedef  enum bcmgenet_power_mode { ____Placeholder_bcmgenet_power_mode } bcmgenet_power_mode ;

/* Variables and functions */
 int CMD_CRC_FWD ; 
 int GENET_POWER_WOL_MAGIC ; 
 int MPD_EN ; 
 int /*<<< orphan*/  UMAC_CMD ; 
 int /*<<< orphan*/  UMAC_MPD_CTRL ; 
 int FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  wol ; 

void FUNC3(struct bcmgenet_priv *priv,
			       enum bcmgenet_power_mode mode)
{
	u32 reg;

	if (mode != GENET_POWER_WOL_MAGIC) {
		FUNC2(priv, wol, priv->dev, "invalid mode: %d\n", mode);
		return;
	}

	reg = FUNC0(priv, UMAC_MPD_CTRL);
	if (!(reg & MPD_EN))
		return;	/* already powered up so skip the rest */
	reg &= ~MPD_EN;
	FUNC1(priv, reg, UMAC_MPD_CTRL);

	/* Disable CRC Forward */
	reg = FUNC0(priv, UMAC_CMD);
	reg &= ~CMD_CRC_FWD;
	FUNC1(priv, reg, UMAC_CMD);
	priv->crc_fwd_en = 0;
}
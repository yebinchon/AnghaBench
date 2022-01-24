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
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int CMD_LCL_LOOP_EN ; 
 int CMD_SW_RESET ; 
 int /*<<< orphan*/  UMAC_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct bcmgenet_priv *priv)
{
	/* 7358a0/7552a0: bad default in RBUF_FLUSH_CTRL.umac_sw_rst */
	FUNC0(priv, 0);
	FUNC2(10);

	/* disable MAC while updating its registers */
	FUNC1(priv, 0, UMAC_CMD);

	/* issue soft reset with (rg)mii loopback to ensure a stable rxclk */
	FUNC1(priv, CMD_SW_RESET | CMD_LCL_LOOP_EN, UMAC_CMD);
}
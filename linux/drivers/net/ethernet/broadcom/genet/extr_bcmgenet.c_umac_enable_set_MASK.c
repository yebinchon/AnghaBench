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
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMAC_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct bcmgenet_priv *priv, u32 mask, bool enable)
{
	u32 reg;

	reg = FUNC0(priv, UMAC_CMD);
	if (enable)
		reg |= mask;
	else
		reg &= ~mask;
	FUNC1(priv, reg, UMAC_CMD);

	/* UniMAC stops on a packet boundary, wait for a full-size packet
	 * to be processed
	 */
	if (enable == 0)
		FUNC2(1000, 2000);
}
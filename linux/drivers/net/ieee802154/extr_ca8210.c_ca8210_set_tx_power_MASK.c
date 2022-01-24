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
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {int /*<<< orphan*/  spi; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_TRANSMIT_POWER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ieee802154_hw *hw, s32 mbm)
{
	struct ca8210_priv *priv = hw->priv;

	mbm /= 100;
	return FUNC0(
		FUNC1(PHY_TRANSMIT_POWER, 0, 1, &mbm, priv->spi)
	);
}
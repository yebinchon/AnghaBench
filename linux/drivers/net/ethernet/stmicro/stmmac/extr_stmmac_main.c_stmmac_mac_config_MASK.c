#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct stmmac_priv {scalar_t__ ioaddr; TYPE_4__* hw; TYPE_2__* plat; int /*<<< orphan*/  speed; } ;
struct phylink_link_state {scalar_t__ interface; int /*<<< orphan*/  duplex; scalar_t__ pause; int /*<<< orphan*/  speed; } ;
struct phylink_config {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  speed2500; int /*<<< orphan*/  speed5000; int /*<<< orphan*/  speed10000; } ;
struct TYPE_7__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed10; int /*<<< orphan*/  speed100; int /*<<< orphan*/  speed1000; int /*<<< orphan*/  speed2500; TYPE_1__ xgmii; int /*<<< orphan*/  speed_mask; } ;
struct TYPE_8__ {TYPE_3__ link; } ;
struct TYPE_6__ {int /*<<< orphan*/  bsp_priv; int /*<<< orphan*/  (* fix_mac_speed ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ MAC_CTRL_REG ; 
 scalar_t__ PHY_INTERFACE_MODE_USXGMII ; 
#define  SPEED_10 133 
#define  SPEED_100 132 
#define  SPEED_1000 131 
#define  SPEED_10000 130 
#define  SPEED_2500 129 
#define  SPEED_5000 128 
 struct stmmac_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct phylink_config *config, unsigned int mode,
			      const struct phylink_link_state *state)
{
	struct stmmac_priv *priv = FUNC0(FUNC4(config->dev));
	u32 ctrl;

	ctrl = FUNC1(priv->ioaddr + MAC_CTRL_REG);
	ctrl &= ~priv->hw->link.speed_mask;

	if (state->interface == PHY_INTERFACE_MODE_USXGMII) {
		switch (state->speed) {
		case SPEED_10000:
			ctrl |= priv->hw->link.xgmii.speed10000;
			break;
		case SPEED_5000:
			ctrl |= priv->hw->link.xgmii.speed5000;
			break;
		case SPEED_2500:
			ctrl |= priv->hw->link.xgmii.speed2500;
			break;
		default:
			return;
		}
	} else {
		switch (state->speed) {
		case SPEED_2500:
			ctrl |= priv->hw->link.speed2500;
			break;
		case SPEED_1000:
			ctrl |= priv->hw->link.speed1000;
			break;
		case SPEED_100:
			ctrl |= priv->hw->link.speed100;
			break;
		case SPEED_10:
			ctrl |= priv->hw->link.speed10;
			break;
		default:
			return;
		}
	}

	priv->speed = state->speed;

	if (priv->plat->fix_mac_speed)
		priv->plat->fix_mac_speed(priv->plat->bsp_priv, state->speed);

	if (!state->duplex)
		ctrl &= ~priv->hw->link.duplex;
	else
		ctrl |= priv->hw->link.duplex;

	/* Flow Control operation */
	if (state->pause)
		FUNC2(priv, state->duplex);

	FUNC5(ctrl, priv->ioaddr + MAC_CTRL_REG);
}
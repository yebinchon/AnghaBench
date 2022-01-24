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
struct phylink_link_state {int speed; int pause; } ;
struct phylink_config {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct axienet_local {int dummy; } ;

/* Variables and functions */
 int MLO_PAUSE_RX ; 
 int MLO_PAUSE_TX ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int /*<<< orphan*/  XAE_EMMC_LINKSPD_10 ; 
 int /*<<< orphan*/  XAE_EMMC_LINKSPD_100 ; 
 int /*<<< orphan*/  XAE_EMMC_LINKSPD_1000 ; 
 int /*<<< orphan*/  XAE_EMMC_LINKSPEED_MASK ; 
 int /*<<< orphan*/  XAE_EMMC_OFFSET ; 
 int /*<<< orphan*/  XAE_FCC_FCRX_MASK ; 
 int /*<<< orphan*/  XAE_FCC_FCTX_MASK ; 
 int /*<<< orphan*/  XAE_FCC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axienet_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct axienet_local* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct phylink_config *config, unsigned int mode,
			       const struct phylink_link_state *state)
{
	struct net_device *ndev = FUNC4(config->dev);
	struct axienet_local *lp = FUNC3(ndev);
	u32 emmc_reg, fcc_reg;

	emmc_reg = FUNC0(lp, XAE_EMMC_OFFSET);
	emmc_reg &= ~XAE_EMMC_LINKSPEED_MASK;

	switch (state->speed) {
	case SPEED_1000:
		emmc_reg |= XAE_EMMC_LINKSPD_1000;
		break;
	case SPEED_100:
		emmc_reg |= XAE_EMMC_LINKSPD_100;
		break;
	case SPEED_10:
		emmc_reg |= XAE_EMMC_LINKSPD_10;
		break;
	default:
		FUNC2(&ndev->dev,
			"Speed other than 10, 100 or 1Gbps is not supported\n");
		break;
	}

	FUNC1(lp, XAE_EMMC_OFFSET, emmc_reg);

	fcc_reg = FUNC0(lp, XAE_FCC_OFFSET);
	if (state->pause & MLO_PAUSE_TX)
		fcc_reg |= XAE_FCC_FCTX_MASK;
	else
		fcc_reg &= ~XAE_FCC_FCTX_MASK;
	if (state->pause & MLO_PAUSE_RX)
		fcc_reg |= XAE_FCC_FCRX_MASK;
	else
		fcc_reg &= ~XAE_FCC_FCRX_MASK;
	FUNC1(lp, XAE_FCC_OFFSET, fcc_reg);
}
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
typedef  int u16 ;
struct encx24j600_priv {int hw_enabled; scalar_t__ autoneg; int /*<<< orphan*/  rxfilter; scalar_t__ full_duplex; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 int /*<<< orphan*/  EIDLED ; 
 int FULDPX ; 
 int /*<<< orphan*/  MACON1 ; 
 int /*<<< orphan*/  MACON2 ; 
 int MACON2_DEFER ; 
 int MACON2_RSV1 ; 
 int /*<<< orphan*/  MAIPG ; 
 int /*<<< orphan*/  MAMXFL ; 
 int MAX_FRAMELEN ; 
 int PADCFG0 ; 
 int PADCFG2 ; 
 int /*<<< orphan*/  PHANA ; 
 int /*<<< orphan*/  PHANA_DEFAULT ; 
 int /*<<< orphan*/  RXFILTER_NORMAL ; 
 int TXCRCEN ; 
 int /*<<< orphan*/  FUNC0 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct encx24j600_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct encx24j600_priv*) ; 

__attribute__((used)) static int FUNC11(struct encx24j600_priv *priv)
{
	int ret = 0;
	u16 macon2;

	priv->hw_enabled = false;

	/* PHY Leds: link status,
	 * LEDA: Link State + collision events
	 * LEDB: Link State + transmit/receive events
	 */
	FUNC7(priv, EIDLED, 0xff00, 0xcb00);

	/* Loopback disabled */
	FUNC9(priv, MACON1, 0x9);

	/* interpacket gap value */
	FUNC9(priv, MAIPG, 0x0c12);

	/* Write the auto negotiation pattern */
	FUNC8(priv, PHANA, PHANA_DEFAULT);

	FUNC6(priv);
	FUNC0(priv);

	macon2 = MACON2_RSV1 | TXCRCEN | PADCFG0 | PADCFG2 | MACON2_DEFER;
	if ((priv->autoneg == AUTONEG_DISABLE) && priv->full_duplex)
		macon2 |= FULDPX;

	FUNC4(priv, MACON2, macon2);

	priv->rxfilter = RXFILTER_NORMAL;
	FUNC5(priv);

	/* Program the Maximum frame length */
	FUNC9(priv, MAMXFL, MAX_FRAMELEN);

	/* Init Tx pointers */
	FUNC3(priv);

	/* Init Rx pointers */
	FUNC2(priv);

	if (FUNC10(priv))
		FUNC1(priv, "Hw is initialized");

	return ret;
}
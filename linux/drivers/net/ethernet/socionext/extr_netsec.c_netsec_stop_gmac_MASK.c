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
struct netsec_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_REG_OMR ; 
 int /*<<< orphan*/  NETSEC_GMAC_OMR_REG_SR ; 
 int /*<<< orphan*/  NETSEC_GMAC_OMR_REG_ST ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_RX_INTEN_CLR ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_TX_INTEN_CLR ; 
 int FUNC0 (struct netsec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct netsec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netsec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct netsec_priv *priv)
{
	u32 value;
	int ret;

	ret = FUNC0(priv, GMAC_REG_OMR, &value);
	if (ret)
		return ret;
	value &= ~NETSEC_GMAC_OMR_REG_SR;
	value &= ~NETSEC_GMAC_OMR_REG_ST;

	/* disable all interrupts */
	FUNC2(priv, NETSEC_REG_NRM_RX_INTEN_CLR, ~0);
	FUNC2(priv, NETSEC_REG_NRM_TX_INTEN_CLR, ~0);

	return FUNC1(priv, GMAC_REG_OMR, value);
}
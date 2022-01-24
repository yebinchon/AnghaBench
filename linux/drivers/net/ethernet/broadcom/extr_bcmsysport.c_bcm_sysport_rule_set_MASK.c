#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int location; scalar_t__ ring_cookie; } ;
struct ethtool_rxnfc {TYPE_1__ fs; } ;
struct bcm_sysport_priv {int* filters_loc; int /*<<< orphan*/  filters; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int RXCHK_BRCM_TAG_CID_MASK ; 
 int RXCHK_BRCM_TAG_CID_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int RXCHK_BRCM_TAG_MAX ; 
 scalar_t__ RX_CLS_FLOW_WAKE ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sysport_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct bcm_sysport_priv *priv,
				struct ethtool_rxnfc *nfc)
{
	unsigned int index;
	u32 reg;

	/* We cannot match locations greater than what the classification ID
	 * permits (256 entries)
	 */
	if (nfc->fs.location > RXCHK_BRCM_TAG_CID_MASK)
		return -E2BIG;

	/* We cannot support flows that are not destined for a wake-up */
	if (nfc->fs.ring_cookie != RX_CLS_FLOW_WAKE)
		return -EOPNOTSUPP;

	/* All filters are already in use, we cannot match more rules */
	if (FUNC2(priv->filters, RXCHK_BRCM_TAG_MAX) ==
	    RXCHK_BRCM_TAG_MAX)
		return -ENOSPC;

	index = FUNC3(priv->filters, RXCHK_BRCM_TAG_MAX);
	if (index > RXCHK_BRCM_TAG_MAX)
		return -ENOSPC;

	/* Location is the classification ID, and index is the position
	 * within one of our 8 possible filters to be programmed
	 */
	reg = FUNC4(priv, FUNC0(index));
	reg &= ~(RXCHK_BRCM_TAG_CID_MASK << RXCHK_BRCM_TAG_CID_SHIFT);
	reg |= nfc->fs.location << RXCHK_BRCM_TAG_CID_SHIFT;
	FUNC5(priv, reg, FUNC0(index));
	FUNC5(priv, 0xff00ffff, FUNC1(index));

	priv->filters_loc[index] = nfc->fs.location;
	FUNC6(index, priv->filters);

	return 0;
}
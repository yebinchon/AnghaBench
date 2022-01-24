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
struct net_device {int dummy; } ;
struct fec_enet_private {int quirks; scalar_t__ hwp; int /*<<< orphan*/  tx_time_itr; int /*<<< orphan*/  tx_pkts_itr; int /*<<< orphan*/  rx_time_itr; int /*<<< orphan*/  rx_pkts_itr; } ;

/* Variables and functions */
 int FEC_ITR_CLK_SEL ; 
 int FEC_ITR_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FEC_QUIRK_HAS_AVB ; 
 scalar_t__ FEC_RXIC0 ; 
 scalar_t__ FEC_RXIC1 ; 
 scalar_t__ FEC_RXIC2 ; 
 scalar_t__ FEC_TXIC0 ; 
 scalar_t__ FEC_TXIC1 ; 
 scalar_t__ FEC_TXIC2 ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct fec_enet_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC3(ndev);
	int rx_itr, tx_itr;

	/* Must be greater than zero to avoid unpredictable behavior */
	if (!fep->rx_time_itr || !fep->rx_pkts_itr ||
	    !fep->tx_time_itr || !fep->tx_pkts_itr)
		return;

	/* Select enet system clock as Interrupt Coalescing
	 * timer Clock Source
	 */
	rx_itr = FEC_ITR_CLK_SEL;
	tx_itr = FEC_ITR_CLK_SEL;

	/* set ICFT and ICTT */
	rx_itr |= FUNC0(fep->rx_pkts_itr);
	rx_itr |= FUNC1(FUNC2(ndev, fep->rx_time_itr));
	tx_itr |= FUNC0(fep->tx_pkts_itr);
	tx_itr |= FUNC1(FUNC2(ndev, fep->tx_time_itr));

	rx_itr |= FEC_ITR_EN;
	tx_itr |= FEC_ITR_EN;

	FUNC4(tx_itr, fep->hwp + FEC_TXIC0);
	FUNC4(rx_itr, fep->hwp + FEC_RXIC0);
	if (fep->quirks & FEC_QUIRK_HAS_AVB) {
		FUNC4(tx_itr, fep->hwp + FEC_TXIC1);
		FUNC4(rx_itr, fep->hwp + FEC_RXIC1);
		FUNC4(tx_itr, fep->hwp + FEC_TXIC2);
		FUNC4(rx_itr, fep->hwp + FEC_RXIC2);
	}
}
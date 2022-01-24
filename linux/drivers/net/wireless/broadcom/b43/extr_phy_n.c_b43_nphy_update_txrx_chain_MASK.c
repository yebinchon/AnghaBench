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
typedef  int u16 ;
struct TYPE_2__ {struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_n {int txrx_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_RFSEQCA ; 
 int B43_NPHY_RFSEQCA_RXEN ; 
 int B43_NPHY_RFSEQCA_TXEN ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQMODE ; 
 int /*<<< orphan*/  B43_NPHY_RFSEQMODE_CAOVER ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	struct b43_phy_n *nphy = dev->phy.n;

	bool override = false;
	u16 chain = 0x33;

	if (nphy->txrx_chain == 0) {
		chain = 0x11;
		override = true;
	} else if (nphy->txrx_chain == 1) {
		chain = 0x22;
		override = true;
	}

	FUNC1(dev, B43_NPHY_RFSEQCA,
			~(B43_NPHY_RFSEQCA_TXEN | B43_NPHY_RFSEQCA_RXEN),
			chain);

	if (override)
		FUNC2(dev, B43_NPHY_RFSEQMODE,
				B43_NPHY_RFSEQMODE_CAOVER);
	else
		FUNC0(dev, B43_NPHY_RFSEQMODE,
				~B43_NPHY_RFSEQMODE_CAOVER);
}
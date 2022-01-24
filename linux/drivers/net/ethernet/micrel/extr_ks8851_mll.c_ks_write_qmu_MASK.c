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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__* txw; } ;
struct ks_net {int rc_rxqcr; TYPE_1__ txh; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  KS_RXQCR ; 
 int /*<<< orphan*/  KS_TXQCR ; 
 int RXQCR_SDA ; 
 int TXQCR_METFE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*,scalar_t__*,int) ; 
 int FUNC3 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ks_net *ks, u8 *pdata, u16 len)
{
	/* start header at txb[0] to align txw entries */
	ks->txh.txw[0] = 0;
	ks->txh.txw[1] = FUNC1(len);

	/* 1. set sudo-DMA mode */
	FUNC5(ks, KS_RXQCR, (ks->rc_rxqcr | RXQCR_SDA) & 0xff);
	/* 2. write status/lenth info */
	FUNC2(ks, ks->txh.txw, 4);
	/* 3. write pkt data */
	FUNC2(ks, (u16 *)pdata, FUNC0(len, 4));
	/* 4. reset sudo-DMA mode */
	FUNC5(ks, KS_RXQCR, ks->rc_rxqcr);
	/* 5. Enqueue Tx(move the pkt from TX buffer into TXQ) */
	FUNC4(ks, KS_TXQCR, TXQCR_METFE);
	/* 6. wait until TXQCR_METFE is auto-cleared */
	while (FUNC3(ks, KS_TXQCR) & TXQCR_METFE)
		;
}
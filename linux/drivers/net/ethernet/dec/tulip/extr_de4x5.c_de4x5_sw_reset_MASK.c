#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {size_t active; int chipset; scalar_t__ dma_rings; size_t tx_new; size_t tx_old; int rxRingSize; int txRingSize; TYPE_3__* tx_ring; int /*<<< orphan*/  setup_frame; TYPE_2__* rx_ring; scalar_t__ rx_old; scalar_t__ rx_new; int /*<<< orphan*/  setup_f; scalar_t__ infoblock_csr6; TYPE_1__* phy; int /*<<< orphan*/  useSROM; } ;
struct de4x5_desc {int dummy; } ;
typedef  scalar_t__ s32 ;
struct TYPE_6__ {void* status; } ;
struct TYPE_5__ {void* status; } ;
struct TYPE_4__ {scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ BMR_RML ; 
 int DC21140 ; 
 int DC2114x ; 
 int /*<<< orphan*/  DE4X5_BMR ; 
 scalar_t__ DE4X5_CACHE_ALIGN ; 
 int /*<<< orphan*/  DE4X5_OMR ; 
 int /*<<< orphan*/  DE4X5_RRBA ; 
 int /*<<< orphan*/  DE4X5_STS ; 
 int /*<<< orphan*/  DE4X5_TRBA ; 
 scalar_t__ DESC_SKIP_LEN ; 
 int EIO ; 
 int NUM_RX_DESC ; 
 scalar_t__ OMR_HBD ; 
 scalar_t__ OMR_PR ; 
 scalar_t__ OMR_PS ; 
 scalar_t__ OMR_SB ; 
 scalar_t__ OMR_SDP ; 
 scalar_t__ OMR_ST ; 
 scalar_t__ OMR_TTM ; 
 scalar_t__ PBL_4 ; 
 scalar_t__ PBL_8 ; 
 int /*<<< orphan*/  PERFECT ; 
 int PERFECT_F ; 
 int /*<<< orphan*/  R_OWN ; 
 int SETUP_FRAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int TD_SET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct de4x5_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC8(dev);
    u_long iobase = dev->base_addr;
    int i, j, status = 0;
    s32 bmr, omr;

    /* Select the MII or SRL port now and RESET the MAC */
    if (!lp->useSROM) {
	if (lp->phy[lp->active].id != 0) {
	    lp->infoblock_csr6 = OMR_SDP | OMR_PS | OMR_HBD;
	} else {
	    lp->infoblock_csr6 = OMR_SDP | OMR_TTM;
	}
	FUNC3(dev);
    }

    /*
    ** Set the programmable burst length to 8 longwords for all the DC21140
    ** Fasternet chips and 4 longwords for all others: DMA errors result
    ** without these values. Cache align 16 long.
    */
    bmr = (lp->chipset==DC21140 ? PBL_8 : PBL_4) | DESC_SKIP_LEN | DE4X5_CACHE_ALIGN;
    bmr |= ((lp->chipset & ~0x00ff)==DC2114x ? BMR_RML : 0);
    FUNC9(bmr, DE4X5_BMR);

    omr = FUNC4(DE4X5_OMR) & ~OMR_PR;             /* Turn off promiscuous mode */
    if (lp->chipset == DC21140) {
	omr |= (OMR_SDP | OMR_SB);
    }
    lp->setup_f = PERFECT;
    FUNC9(lp->dma_rings, DE4X5_RRBA);
    FUNC9(lp->dma_rings + NUM_RX_DESC * sizeof(struct de4x5_desc),
	 DE4X5_TRBA);

    lp->rx_new = lp->rx_old = 0;
    lp->tx_new = lp->tx_old = 0;

    for (i = 0; i < lp->rxRingSize; i++) {
	lp->rx_ring[i].status = FUNC2(R_OWN);
    }

    for (i = 0; i < lp->txRingSize; i++) {
	lp->tx_ring[i].status = FUNC2(0);
    }

    FUNC1();

    /* Build the setup frame depending on filtering mode */
    FUNC0(dev);

    FUNC6(dev, lp->setup_frame, PERFECT_F|TD_SET|SETUP_FRAME_LEN, (struct sk_buff *)1);
    FUNC9(omr|OMR_ST, DE4X5_OMR);

    /* Poll for setup frame completion (adapter interrupts are disabled now) */

    for (j=0, i=0;(i<500) && (j==0);i++) {       /* Up to 500ms delay */
	FUNC7(1);
	if ((s32)FUNC5(lp->tx_ring[lp->tx_new].status) >= 0) j=1;
    }
    FUNC9(omr, DE4X5_OMR);                        /* Stop everything! */

    if (j == 0) {
	FUNC10("%s: Setup frame timed out, status %08x\n", dev->name,
	       FUNC4(DE4X5_STS));
	status = -EIO;
    }

    lp->tx_new = (lp->tx_new + 1) % lp->txRingSize;
    lp->tx_old = lp->tx_new;

    return status;
}
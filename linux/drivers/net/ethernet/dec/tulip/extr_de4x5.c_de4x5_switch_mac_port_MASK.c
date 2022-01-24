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
typedef  int /*<<< orphan*/  u_long ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  csr15; int /*<<< orphan*/  csr14; int /*<<< orphan*/  csr13; int /*<<< orphan*/  gep; int /*<<< orphan*/  gepc; } ;
struct de4x5_private {int infoblock_csr6; int chipset; TYPE_1__ cache; } ;
typedef  int s32 ;

/* Variables and functions */
 int DC21140 ; 
 int DC2114x ; 
 int /*<<< orphan*/  DE4X5_MFC ; 
 int /*<<< orphan*/  DE4X5_OMR ; 
 int OMR_FDX ; 
 int OMR_HBD ; 
 int OMR_PCS ; 
 int OMR_PS ; 
 int OMR_SCR ; 
 int OMR_TTM ; 
 int /*<<< orphan*/  RESET_DE4X5 ; 
 int /*<<< orphan*/  STOP_DE4X5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct de4x5_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC5(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC2(dev);
    u_long iobase = dev->base_addr;
    s32 omr;

    STOP_DE4X5;

    /* Assert the OMR_PS bit in CSR6 */
    omr = (FUNC1(DE4X5_OMR) & ~(OMR_PS | OMR_HBD | OMR_TTM | OMR_PCS | OMR_SCR |
			                                             OMR_FDX));
    omr |= lp->infoblock_csr6;
    if (omr & OMR_PS) omr |= OMR_HBD;
    FUNC3(omr, DE4X5_OMR);

    /* Soft Reset */
    RESET_DE4X5;

    /* Restore the GEP - especially for COMPACT and Type 0 Infoblocks */
    if (lp->chipset == DC21140) {
	FUNC0(lp->cache.gepc, dev);
	FUNC0(lp->cache.gep, dev);
    } else if ((lp->chipset & ~0x0ff) == DC2114x) {
	FUNC4(dev, lp->cache.csr13, lp->cache.csr14, lp->cache.csr15);
    }

    /* Restore CSR6 */
    FUNC3(omr, DE4X5_OMR);

    /* Reset CSR8 */
    FUNC1(DE4X5_MFC);

    return omr;
}
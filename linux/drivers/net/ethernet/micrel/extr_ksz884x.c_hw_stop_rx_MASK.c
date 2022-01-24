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
struct ksz_hw {int rx_cfg; scalar_t__ io; scalar_t__ rx_stop; } ;

/* Variables and functions */
 int DMA_RX_ENABLE ; 
 int /*<<< orphan*/  KS884X_INT_RX_STOPPED ; 
 scalar_t__ KS_DMA_RX_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ksz_hw *hw)
{
	hw->rx_stop = 0;
	FUNC0(hw, KS884X_INT_RX_STOPPED);
	FUNC1((hw->rx_cfg & ~DMA_RX_ENABLE), hw->io + KS_DMA_RX_CTRL);
}
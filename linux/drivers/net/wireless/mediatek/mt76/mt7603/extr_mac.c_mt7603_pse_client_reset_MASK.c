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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ MT_CLIENT_BASE_PHYS_ADDR ; 
 scalar_t__ MT_CLIENT_RESET_TX ; 
 int MT_CLIENT_RESET_TX_R_E_1 ; 
 int MT_CLIENT_RESET_TX_R_E_1_S ; 
 int MT_CLIENT_RESET_TX_R_E_2 ; 
 int MT_CLIENT_RESET_TX_R_E_2_S ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct mt7603_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct mt7603_dev *dev)
{
	u32 addr;

	addr = FUNC0(dev, MT_CLIENT_BASE_PHYS_ADDR +
				   MT_CLIENT_RESET_TX);

	/* Clear previous reset state */
	FUNC1(dev, addr,
		   MT_CLIENT_RESET_TX_R_E_1 |
		   MT_CLIENT_RESET_TX_R_E_2 |
		   MT_CLIENT_RESET_TX_R_E_1_S |
		   MT_CLIENT_RESET_TX_R_E_2_S);

	/* Start PSE client TX abort */
	FUNC3(dev, addr, MT_CLIENT_RESET_TX_R_E_1);
	FUNC2(dev, addr, MT_CLIENT_RESET_TX_R_E_1_S,
		       MT_CLIENT_RESET_TX_R_E_1_S, 500);

	FUNC3(dev, addr, MT_CLIENT_RESET_TX_R_E_2);
	FUNC3(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_SW_RESET);

	/* Wait for PSE client to clear TX FIFO */
	FUNC2(dev, addr, MT_CLIENT_RESET_TX_R_E_2_S,
		       MT_CLIENT_RESET_TX_R_E_2_S, 500);

	/* Clear PSE client TX abort state */
	FUNC1(dev, addr,
		   MT_CLIENT_RESET_TX_R_E_1 |
		   MT_CLIENT_RESET_TX_R_E_2);
}
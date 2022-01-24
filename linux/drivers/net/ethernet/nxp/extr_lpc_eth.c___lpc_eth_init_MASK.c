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
struct netdata_local {int /*<<< orphan*/  net_base; void* last_tx_idx; scalar_t__ num_used_tx_buffs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENET_MAXF_SIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int LPC_COMMAND_PASSRUNTFRAME ; 
 int LPC_COMMAND_RMII ; 
 int LPC_COMMAND_RXENABLE ; 
 int LPC_COMMAND_TXENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int LPC_MAC1_PASS_ALL_RX_FRAMES ; 
 int LPC_MAC1_RECV_ENABLE ; 
 int LPC_MAC2_CRC_ENABLE ; 
 int LPC_MAC2_PAD_CRC_ENABLE ; 
 int LPC_RXFLTRW_ACCEPTPERFECT ; 
 int LPC_RXFLTRW_ACCEPTUBROADCAST ; 
 int LPC_SUPP_RESET_RMII ; 
 scalar_t__ PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  FUNC13 (struct netdata_local*) ; 
 int /*<<< orphan*/  FUNC14 (struct netdata_local*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct netdata_local *pldat)
{
	u32 tmp;

	/* Disable controller and reset */
	tmp = FUNC17(FUNC3(pldat->net_base));
	tmp &= ~LPC_COMMAND_RXENABLE | LPC_COMMAND_TXENABLE;
	FUNC19(tmp, FUNC3(pldat->net_base));
	tmp = FUNC17(FUNC6(pldat->net_base));
	tmp &= ~LPC_MAC1_RECV_ENABLE;
	FUNC19(tmp, FUNC6(pldat->net_base));

	/* Initial MAC setup */
	FUNC19(LPC_MAC1_PASS_ALL_RX_FRAMES, FUNC6(pldat->net_base));
	FUNC19((LPC_MAC2_PAD_CRC_ENABLE | LPC_MAC2_CRC_ENABLE),
	       FUNC7(pldat->net_base));
	FUNC19(ENET_MAXF_SIZE, FUNC8(pldat->net_base));

	/* Collision window, gap */
	FUNC19((FUNC1(0xF) |
		FUNC0(0x37)),
	       FUNC2(pldat->net_base));
	FUNC19(FUNC12(0x12), FUNC5(pldat->net_base));

	if (FUNC16(&pldat->pdev->dev) == PHY_INTERFACE_MODE_MII)
		FUNC19(LPC_COMMAND_PASSRUNTFRAME,
		       FUNC3(pldat->net_base));
	else {
		FUNC19((LPC_COMMAND_PASSRUNTFRAME | LPC_COMMAND_RMII),
		       FUNC3(pldat->net_base));
		FUNC19(LPC_SUPP_RESET_RMII, FUNC10(pldat->net_base));
	}

	FUNC13(pldat);

	/* Setup TX and RX descriptors */
	FUNC14(pldat);

	/* Setup packet filtering */
	FUNC19((LPC_RXFLTRW_ACCEPTUBROADCAST | LPC_RXFLTRW_ACCEPTPERFECT),
	       FUNC9(pldat->net_base));

	/* Get the next TX buffer output index */
	pldat->num_used_tx_buffs = 0;
	pldat->last_tx_idx =
		FUNC17(FUNC11(pldat->net_base));

	/* Clear and enable interrupts */
	FUNC19(0xFFFF, FUNC4(pldat->net_base));
	FUNC18();
	FUNC15(pldat->net_base);

	/* Enable controller */
	tmp = FUNC17(FUNC3(pldat->net_base));
	tmp |= LPC_COMMAND_RXENABLE | LPC_COMMAND_TXENABLE;
	FUNC19(tmp, FUNC3(pldat->net_base));
	tmp = FUNC17(FUNC6(pldat->net_base));
	tmp |= LPC_MAC1_RECV_ENABLE;
	FUNC19(tmp, FUNC6(pldat->net_base));
}
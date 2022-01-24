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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_1__ card_state_notif; } ;
struct il_rx_pkt {TYPE_2__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {unsigned long status; int /*<<< orphan*/  wait_command_queue; TYPE_3__* hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_CLR ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_SET ; 
 int CT_CARD_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  HBUS_TARG_MBX_C ; 
 int /*<<< orphan*/  HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED ; 
 int HW_CARD_DISABLED ; 
 int RXON_CARD_DISABLED ; 
 int SW_CARD_DISABLED ; 
 int /*<<< orphan*/  S_RFKILL ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct il_rx_pkt* FUNC7 (struct il_rx_buf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC7(rxb);
	u32 flags = FUNC6(pkt->u.card_state_notif.flags);
	unsigned long status = il->status;

	FUNC0("Card state received: HW:%s SW:%s CT:%s\n",
		  (flags & HW_CARD_DISABLED) ? "Kill" : "On",
		  (flags & SW_CARD_DISABLED) ? "Kill" : "On",
		  (flags & CT_CARD_DISABLED) ? "Reached" : "Not reached");

	if (flags & (SW_CARD_DISABLED | HW_CARD_DISABLED | CT_CARD_DISABLED)) {

		FUNC1(il, CSR_UCODE_DRV_GP1_SET,
		       CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);

		FUNC5(il, HBUS_TARG_MBX_C, HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED);

		if (!(flags & RXON_CARD_DISABLED)) {
			FUNC1(il, CSR_UCODE_DRV_GP1_CLR,
			       CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);
			FUNC5(il, HBUS_TARG_MBX_C,
			      HBUS_TARG_MBX_C_REG_BIT_CMD_BLOCKED);
		}
	}

	if (flags & CT_CARD_DISABLED)
		FUNC3(il);

	if (flags & HW_CARD_DISABLED)
		FUNC8(S_RFKILL, &il->status);
	else
		FUNC2(S_RFKILL, &il->status);

	if (!(flags & RXON_CARD_DISABLED))
		FUNC4(il);

	if ((FUNC9(S_RFKILL, &status) !=
	     FUNC9(S_RFKILL, &il->status)))
		FUNC11(il->hw->wiphy,
					  FUNC9(S_RFKILL, &il->status));
	else
		FUNC10(&il->wait_command_queue);
}
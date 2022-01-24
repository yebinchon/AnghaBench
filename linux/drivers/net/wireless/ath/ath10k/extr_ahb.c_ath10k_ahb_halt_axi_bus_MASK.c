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
typedef  int u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int AHB_AXI_BUS_HALT_ACK ; 
 int AHB_AXI_BUS_HALT_REQ ; 
 int /*<<< orphan*/  ATH10K_AHB_AXI_BUS_HALT_TIMEOUT ; 
 int /*<<< orphan*/  ATH10K_DBG_AHB ; 
 int FUNC0 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ath10k *ar, u32 haltreq_reg,
				    u32 haltack_reg)
{
	unsigned long timeout;
	u32 val;

	/* Issue halt axi bus request */
	val = FUNC0(ar, haltreq_reg);
	val |= AHB_AXI_BUS_HALT_REQ;
	FUNC1(ar, haltreq_reg, val);

	/* Wait for axi bus halted ack */
	timeout = jiffies + FUNC5(ATH10K_AHB_AXI_BUS_HALT_TIMEOUT);
	do {
		val = FUNC0(ar, haltack_reg);
		if (val & AHB_AXI_BUS_HALT_ACK)
			break;

		FUNC4(1);
	} while (FUNC6(jiffies, timeout));

	if (!(val & AHB_AXI_BUS_HALT_ACK)) {
		FUNC3(ar, "failed to halt axi bus: %d\n", val);
		return;
	}

	FUNC2(ar, ATH10K_DBG_AHB, "axi bus halted\n");
}
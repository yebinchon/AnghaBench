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
struct il_priv {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_FH_INT_STATUS ; 
 int /*<<< orphan*/  CSR_INT ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  S_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(struct il_priv *il)
{
	FUNC1(S_INT_ENABLED, &il->status);

	/* disable interrupts from uCode/NIC to host */
	FUNC0(il, CSR_INT_MASK, 0x00000000);

	/* acknowledge/clear/reset any interrupts still pending
	 * from uCode or flow handler (Rx/Tx DMA) */
	FUNC0(il, CSR_INT, 0xffffffff);
	FUNC0(il, CSR_FH_INT_STATUS, 0xffffffff);
}
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
struct pxa168_eth_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_CAUSE ; 
 int /*<<< orphan*/  INT_MASK ; 
 int /*<<< orphan*/  INT_W_CLEAR ; 
 int PCR_HS ; 
 int /*<<< orphan*/  PORT_CONFIG ; 
 int SDCR_BLMR ; 
 int SDCR_BLMT ; 
 int SDCR_BSZ8 ; 
 int SDCR_RC_MAX_RETRANS ; 
 int SDCR_RIFB ; 
 int /*<<< orphan*/  SDMA_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct pxa168_eth_private*) ; 
 int FUNC1 (struct pxa168_eth_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa168_eth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa168_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pxa168_eth_private *pep)
{
	int err = 0;

	/* Disable interrupts */
	FUNC3(pep, INT_MASK, 0);
	FUNC3(pep, INT_CAUSE, 0);
	/* Write to ICR to clear interrupts. */
	FUNC3(pep, INT_W_CLEAR, 0);
	/* Abort any transmit and receive operations and put DMA
	 * in idle state.
	 */
	FUNC0(pep);
	/* Initialize address hash table */
	err = FUNC1(pep);
	if (err)
		return err;
	/* SDMA configuration */
	FUNC3(pep, SDMA_CONFIG, SDCR_BSZ8 |	/* Burst size = 32 bytes */
	    SDCR_RIFB |				/* Rx interrupt on frame */
	    SDCR_BLMT |				/* Little endian transmit */
	    SDCR_BLMR |				/* Little endian receive */
	    SDCR_RC_MAX_RETRANS);		/* Max retransmit count */
	/* Port Configuration */
	FUNC3(pep, PORT_CONFIG, PCR_HS);		/* Hash size is 1/2kb */
	FUNC2(pep);

	return err;
}
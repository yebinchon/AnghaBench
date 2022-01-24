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
struct dma_desc {int /*<<< orphan*/  des3; int /*<<< orphan*/  des2; } ;

/* Variables and functions */
 int TDES2_BUFFER1_SIZE_MASK ; 
 unsigned int TDES3_CHECKSUM_INSERTION_SHIFT ; 
 unsigned int TDES3_FIRST_DESCRIPTOR ; 
 unsigned int TDES3_LAST_DESCRIPTOR ; 
 unsigned int TDES3_OWN ; 
 unsigned int TDES3_PACKET_SIZE_MASK ; 
 unsigned int TX_CIC_FULL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct dma_desc *p, int is_fs, int len,
				      bool csum_flag, int mode, bool tx_own,
				      bool ls, unsigned int tot_pkt_len)
{
	unsigned int tdes3 = FUNC2(p->des3);

	p->des2 |= FUNC0(len & TDES2_BUFFER1_SIZE_MASK);

	tdes3 |= tot_pkt_len & TDES3_PACKET_SIZE_MASK;
	if (is_fs)
		tdes3 |= TDES3_FIRST_DESCRIPTOR;
	else
		tdes3 &= ~TDES3_FIRST_DESCRIPTOR;

	if (FUNC3(csum_flag))
		tdes3 |= (TX_CIC_FULL << TDES3_CHECKSUM_INSERTION_SHIFT);
	else
		tdes3 &= ~(TX_CIC_FULL << TDES3_CHECKSUM_INSERTION_SHIFT);

	if (ls)
		tdes3 |= TDES3_LAST_DESCRIPTOR;
	else
		tdes3 &= ~TDES3_LAST_DESCRIPTOR;

	/* Finally set the OWN bit. Later the DMA will start! */
	if (tx_own)
		tdes3 |= TDES3_OWN;

	if (is_fs && tx_own)
		/* When the own bit, for the first frame, has to be set, all
		 * descriptors for the same frame has to be set before, to
		 * avoid race condition.
		 */
		FUNC1();

	p->des3 = FUNC0(tdes3);
}
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
struct dma_desc {int /*<<< orphan*/  des0; int /*<<< orphan*/  des1; } ;

/* Variables and functions */
 int STMMAC_CHAIN_MODE ; 
 unsigned int TDES0_OWN ; 
 unsigned int TDES1_CHECKSUM_INSERTION_SHIFT ; 
 unsigned int TDES1_FIRST_SEGMENT ; 
 unsigned int TDES1_LAST_SEGMENT ; 
 unsigned int TX_CIC_FULL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_desc*,int) ; 

__attribute__((used)) static void FUNC5(struct dma_desc *p, int is_fs, int len,
				  bool csum_flag, int mode, bool tx_own,
				  bool ls, unsigned int tot_pkt_len)
{
	unsigned int tdes1 = FUNC1(p->des1);

	if (is_fs)
		tdes1 |= TDES1_FIRST_SEGMENT;
	else
		tdes1 &= ~TDES1_FIRST_SEGMENT;

	if (FUNC2(csum_flag))
		tdes1 |= (TX_CIC_FULL) << TDES1_CHECKSUM_INSERTION_SHIFT;
	else
		tdes1 &= ~(TX_CIC_FULL << TDES1_CHECKSUM_INSERTION_SHIFT);

	if (ls)
		tdes1 |= TDES1_LAST_SEGMENT;

	p->des1 = FUNC0(tdes1);

	if (mode == STMMAC_CHAIN_MODE)
		FUNC3(p, len);
	else
		FUNC4(p, len);

	if (tx_own)
		p->des0 |= FUNC0(TDES0_OWN);
}
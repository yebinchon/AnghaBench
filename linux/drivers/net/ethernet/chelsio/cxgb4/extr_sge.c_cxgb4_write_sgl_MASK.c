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
struct ulptx_sge_pair {void** addr; void** len; } ;
typedef  struct ulptx_sge_pair u8 ;
typedef  scalar_t__ u64 ;
struct ulptx_sgl {struct ulptx_sge_pair* sge; void* cmd_nsge; void* addr0; void* len0; } ;
struct skb_shared_info {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;
struct sk_buff {int dummy; } ;
struct sge_txq {struct ulptx_sge_pair* desc; scalar_t__ stat; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int MAX_SKB_FRAGS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  ULP_TX_SC_DSGL ; 
 void* FUNC2 (unsigned int) ; 
 void* FUNC3 (scalar_t__ const) ; 
 void* FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ulptx_sge_pair*,struct ulptx_sge_pair*,unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct sk_buff const*) ; 
 struct skb_shared_info* FUNC9 (struct sk_buff const*) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(const struct sk_buff *skb, struct sge_txq *q,
		     struct ulptx_sgl *sgl, u64 *end, unsigned int start,
		     const dma_addr_t *addr)
{
	unsigned int i, len;
	struct ulptx_sge_pair *to;
	const struct skb_shared_info *si = FUNC9(skb);
	unsigned int nfrags = si->nr_frags;
	struct ulptx_sge_pair buf[MAX_SKB_FRAGS / 2 + 1];

	len = FUNC8(skb) - start;
	if (FUNC5(len)) {
		sgl->len0 = FUNC4(len);
		sgl->addr0 = FUNC3(addr[0] + start);
		nfrags++;
	} else {
		sgl->len0 = FUNC4(FUNC7(&si->frags[0]));
		sgl->addr0 = FUNC3(addr[1]);
	}

	sgl->cmd_nsge = FUNC4(FUNC0(ULP_TX_SC_DSGL) |
			      FUNC1(nfrags));
	if (FUNC5(--nfrags == 0))
		return;
	/*
	 * Most of the complexity below deals with the possibility we hit the
	 * end of the queue in the middle of writing the SGL.  For this case
	 * only we create the SGL in a temporary buffer and then copy it.
	 */
	to = (u8 *)end > (u8 *)q->stat ? buf : sgl->sge;

	for (i = (nfrags != si->nr_frags); nfrags >= 2; nfrags -= 2, to++) {
		to->len[0] = FUNC2(FUNC7(&si->frags[i]));
		to->len[1] = FUNC2(FUNC7(&si->frags[++i]));
		to->addr[0] = FUNC3(addr[i]);
		to->addr[1] = FUNC3(addr[++i]);
	}
	if (nfrags) {
		to->len[0] = FUNC2(FUNC7(&si->frags[i]));
		to->len[1] = FUNC2(0);
		to->addr[0] = FUNC3(addr[i + 1]);
	}
	if (FUNC10((u8 *)end > (u8 *)q->stat)) {
		unsigned int part0 = (u8 *)q->stat - (u8 *)sgl->sge, part1;

		if (FUNC5(part0))
			FUNC6(sgl->sge, buf, part0);
		part1 = (u8 *)end - (u8 *)q->stat;
		FUNC6(q->desc, (u8 *)buf + part0, part1);
		end = (void *)q->desc + part1;
	}
	if ((uintptr_t)end & 8)           /* 0-pad to multiple of 16 */
		*end = 0;
}
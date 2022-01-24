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
typedef  int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int len; int data_len; int end; int tail; scalar_t__ cb; scalar_t__ data; } ;
struct brcmf_sdio_dev {TYPE_1__* func2; } ;
struct brcmf_sdio {unsigned int sgentry_align; scalar_t__ head_align; struct brcmf_sdio_dev* sdiodev; } ;
struct TYPE_2__ {unsigned int cur_blksize; } ;

/* Variables and functions */
 int ALIGN_SKB_FLAG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*,struct sk_buff*) ; 
 int FUNC3 (struct brcmf_sdio*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff_head*,struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct brcmf_sdio *bus,
				    struct sk_buff_head *pktq,
				    struct sk_buff *pkt, u16 total_len)
{
	struct brcmf_sdio_dev *sdiodev;
	struct sk_buff *pkt_pad;
	u16 tail_pad, tail_chop, chain_pad;
	unsigned int blksize;
	bool lastfrm;
	int ntail, ret;

	sdiodev = bus->sdiodev;
	blksize = sdiodev->func2->cur_blksize;
	/* sg entry alignment should be a divisor of block size */
	FUNC0(blksize % bus->sgentry_align);

	/* Check tail padding */
	lastfrm = FUNC10(pktq, pkt);
	tail_pad = 0;
	tail_chop = pkt->len % bus->sgentry_align;
	if (tail_chop)
		tail_pad = bus->sgentry_align - tail_chop;
	chain_pad = (total_len + tail_pad) % blksize;
	if (lastfrm && chain_pad)
		tail_pad += blksize - chain_pad;
	if (FUNC11(pkt) < tail_pad && pkt->len > blksize) {
		pkt_pad = FUNC4(tail_pad + tail_chop +
						bus->head_align);
		if (pkt_pad == NULL)
			return -ENOMEM;
		ret = FUNC3(bus, pkt_pad);
		if (FUNC13(ret < 0)) {
			FUNC5(pkt_pad);
			return ret;
		}
		FUNC6(pkt_pad->data,
		       pkt->data + pkt->len - tail_chop,
		       tail_chop);
		*(u16 *)(pkt_pad->cb) = ALIGN_SKB_FLAG + tail_chop;
		FUNC12(pkt, pkt->len - tail_chop);
		FUNC12(pkt_pad, tail_pad + tail_chop);
		FUNC2(pktq, pkt, pkt_pad);
	} else {
		ntail = pkt->data_len + tail_pad -
			(pkt->end - pkt->tail);
		if (FUNC8(pkt) || ntail > 0)
			if (FUNC7(pkt, 0, ntail, GFP_ATOMIC))
				return -ENOMEM;
		if (FUNC9(pkt))
			return -ENOMEM;
		FUNC1(pkt, tail_pad);
	}

	return tail_pad;
}
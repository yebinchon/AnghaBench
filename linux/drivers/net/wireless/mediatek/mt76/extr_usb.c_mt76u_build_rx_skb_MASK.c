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
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MT_DMA_HDR_LEN ; 
 scalar_t__ MT_SKB_HEAD_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (void*,int) ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 struct page* FUNC9 (void*) ; 

__attribute__((used)) static struct sk_buff *
FUNC10(void *data, int len, int buf_size)
{
	struct sk_buff *skb;

	if (FUNC0(buf_size) < MT_DMA_HDR_LEN + len) {
		struct page *page;

		/* slow path, not enough space for data and
		 * skb_shared_info
		 */
		skb = FUNC2(MT_SKB_HEAD_LEN, GFP_ATOMIC);
		if (!skb)
			return NULL;

		FUNC6(skb, data + MT_DMA_HDR_LEN, MT_SKB_HEAD_LEN);
		data += (MT_DMA_HDR_LEN + MT_SKB_HEAD_LEN);
		page = FUNC9(data);
		FUNC5(skb, FUNC8(skb)->nr_frags,
				page, data - FUNC4(page),
				len - MT_SKB_HEAD_LEN, buf_size);

		return skb;
	}

	/* fast path */
	skb = FUNC3(data, buf_size);
	if (!skb)
		return NULL;

	FUNC7(skb, MT_DMA_HDR_LEN);
	FUNC1(skb, len);

	return skb;
}
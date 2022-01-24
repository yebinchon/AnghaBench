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
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct atl1c_adapter {scalar_t__ rx_frag_size; scalar_t__ rx_page_offset; struct page* rx_page; int /*<<< orphan*/  rx_buffer_len; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NET_SKB_PAD ; 
 scalar_t__ PAGE_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct atl1c_adapter *adapter)
{
	struct sk_buff *skb;
	struct page *page;

	if (adapter->rx_frag_size > PAGE_SIZE)
		return FUNC4(adapter->netdev,
					adapter->rx_buffer_len);

	page = adapter->rx_page;
	if (!page) {
		adapter->rx_page = page = FUNC0(GFP_ATOMIC);
		if (FUNC7(!page))
			return NULL;
		adapter->rx_page_offset = 0;
	}

	skb = FUNC1(FUNC5(page) + adapter->rx_page_offset,
			adapter->rx_frag_size);
	if (FUNC3(skb)) {
		FUNC6(skb, NET_SKB_PAD);
		adapter->rx_page_offset += adapter->rx_frag_size;
		if (adapter->rx_page_offset >= PAGE_SIZE)
			adapter->rx_page = NULL;
		else
			FUNC2(page);
	}
	return skb;
}
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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct gve_rx_slot_page_info {int page_offset; void* page_address; } ;

/* Variables and functions */
 int GVE_RX_PAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC2 (struct napi_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct net_device *dev,
				   struct napi_struct *napi,
				   struct gve_rx_slot_page_info *page_info,
				   u16 len)
{
	struct sk_buff *skb = FUNC2(napi, len);
	void *va = page_info->page_address + GVE_RX_PAD +
		   page_info->page_offset;

	if (FUNC4(!skb))
		return NULL;

	FUNC0(skb, len);

	FUNC3(skb, va, len);

	skb->protocol = FUNC1(skb, dev);
	return skb;
}
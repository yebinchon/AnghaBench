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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct gve_rx_slot_page_info {scalar_t__ page_offset; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 scalar_t__ GVE_RX_PAD ; 
 int PAGE_SIZE ; 
 struct sk_buff* FUNC0 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct net_device *dev,
					struct napi_struct *napi,
					struct gve_rx_slot_page_info *page_info,
					u16 len)
{
	struct sk_buff *skb = FUNC0(napi);

	if (FUNC2(!skb))
		return NULL;

	FUNC1(skb, 0, page_info->page,
			page_info->page_offset +
			GVE_RX_PAD, len, PAGE_SIZE / 2);

	return skb;
}
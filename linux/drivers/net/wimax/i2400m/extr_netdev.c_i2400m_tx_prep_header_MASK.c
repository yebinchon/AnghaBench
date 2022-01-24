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
struct i2400m_pl_data_hdr {scalar_t__ reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct i2400m_pl_data_hdr* FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static
void FUNC2(struct sk_buff *skb)
{
	struct i2400m_pl_data_hdr *pl_hdr;
	FUNC0(skb, ETH_HLEN);
	pl_hdr = FUNC1(skb, sizeof(*pl_hdr));
	pl_hdr->reserved = 0;
}
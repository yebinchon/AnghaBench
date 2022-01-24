#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int l3_offset; int /*<<< orphan*/  seg_addr; void* seg_len; void* mss; int /*<<< orphan*/  type_flags; } ;
union gve_tx_desc {TYPE_1__ seg; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GVE_TXD_SEG ; 
 int /*<<< orphan*/  GVE_TXSF_IPV6 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(union gve_tx_desc *seg_desc,
				 struct sk_buff *skb, bool is_gso,
				 u16 len, u64 addr)
{
	seg_desc->seg.type_flags = GVE_TXD_SEG;
	if (is_gso) {
		if (FUNC2(skb))
			seg_desc->seg.type_flags |= GVE_TXSF_IPV6;
		seg_desc->seg.l3_offset = FUNC3(skb) >> 1;
		seg_desc->seg.mss = FUNC0(FUNC4(skb)->gso_size);
	}
	seg_desc->seg.seg_len = FUNC0(len);
	seg_desc->seg.seg_addr = FUNC1(addr);
}
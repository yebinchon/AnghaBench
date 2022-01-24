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
union hinic_l4 {int /*<<< orphan*/  hdr; } ;
union hinic_l3 {void* hdr; TYPE_1__* v4; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct hinic_sq_task {int dummy; } ;
typedef  enum hinic_l4_offload_type { ____Placeholder_hinic_l4_offload_type } hinic_l4_offload_type ;
typedef  enum hinic_l3_offload_type { ____Placeholder_hinic_l3_offload_type } hinic_l3_offload_type ;
struct TYPE_2__ {int version; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int IPV4_PKT_NO_CHKSUM_OFFLOAD ; 
 int IPV6_PKT ; 
 int L3TYPE_UNKNOWN ; 
 int /*<<< orphan*/  TUNNEL_UDP_NO_CSUM ; 
 int /*<<< orphan*/  TX_OFFLOAD_CSUM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,union hinic_l3*,union hinic_l4*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,union hinic_l4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_sq_task*,scalar_t__*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_sq_task*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_sq_task*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_sq_task*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 void* FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC14(struct hinic_sq_task *task, u32 *queue_info,
			struct sk_buff *skb)
{
	enum hinic_l4_offload_type l4_offload;
	u32 offset, l4_len, network_hdr_len;
	enum hinic_l3_offload_type l3_type;
	union hinic_l3 ip;
	union hinic_l4 l4;
	u8 l4_proto;

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	if (skb->encapsulation) {
		u32 l4_tunnel_len;

		ip.hdr = FUNC10(skb);

		if (ip.v4->version == 4)
			l3_type = IPV4_PKT_NO_CHKSUM_OFFLOAD;
		else if (ip.v4->version == 6)
			l3_type = IPV6_PKT;
		else
			l3_type = L3TYPE_UNKNOWN;

		FUNC4(task, l3_type,
					 FUNC11(skb));

		l4_tunnel_len = FUNC8(skb) -
				FUNC13(skb);

		FUNC5(task, TUNNEL_UDP_NO_CSUM,
					 l4_tunnel_len);

		ip.hdr = FUNC6(skb);
		l4.hdr = FUNC9(skb);
		network_hdr_len = FUNC7(skb);
	} else {
		ip.hdr = FUNC10(skb);
		l4.hdr = FUNC12(skb);
		network_hdr_len = FUNC11(skb);
	}

	FUNC0(skb, &ip, &l4, TX_OFFLOAD_CSUM, &l3_type,
			     &l4_proto);

	FUNC3(task, l3_type, network_hdr_len);

	FUNC1(skb, &l4, TX_OFFLOAD_CSUM, l4_proto, &l4_offload,
			  &l4_len, &offset);

	FUNC2(task, queue_info, l4_offload, l4_len, offset);

	return 1;
}
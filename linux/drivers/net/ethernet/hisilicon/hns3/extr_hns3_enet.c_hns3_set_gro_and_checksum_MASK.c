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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct hns3_enet_ring {int dummy; } ;
struct TYPE_4__ {void* count; } ;
struct TYPE_3__ {int /*<<< orphan*/  gso_type; void* gso_size; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ HNS3_L3_TYPE_IPV4 ; 
 scalar_t__ HNS3_L3_TYPE_IPV6 ; 
 int /*<<< orphan*/  HNS3_RXD_GRO_COUNT_M ; 
 int /*<<< orphan*/  HNS3_RXD_GRO_COUNT_S ; 
 int /*<<< orphan*/  HNS3_RXD_GRO_SIZE_M ; 
 int /*<<< orphan*/  HNS3_RXD_GRO_SIZE_S ; 
 int /*<<< orphan*/  HNS3_RXD_L3ID_M ; 
 int /*<<< orphan*/  HNS3_RXD_L3ID_S ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hns3_enet_ring*,struct sk_buff*,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct hns3_enet_ring *ring,
				     struct sk_buff *skb, u32 l234info,
				     u32 bd_base_info, u32 ol_info)
{
	u32 l3_type;

	FUNC4(skb)->gso_size = FUNC1(bd_base_info,
						    HNS3_RXD_GRO_SIZE_M,
						    HNS3_RXD_GRO_SIZE_S);
	/* if there is no HW GRO, do not set gro params */
	if (!FUNC4(skb)->gso_size) {
		FUNC3(ring, skb, l234info, bd_base_info, ol_info);
		return 0;
	}

	FUNC0(skb)->count = FUNC1(l234info,
						  HNS3_RXD_GRO_COUNT_M,
						  HNS3_RXD_GRO_COUNT_S);

	l3_type = FUNC1(l234info, HNS3_RXD_L3ID_M, HNS3_RXD_L3ID_S);
	if (l3_type == HNS3_L3_TYPE_IPV4)
		FUNC4(skb)->gso_type = SKB_GSO_TCPV4;
	else if (l3_type == HNS3_L3_TYPE_IPV6)
		FUNC4(skb)->gso_type = SKB_GSO_TCPV6;
	else
		return -EFAULT;

	return  FUNC2(skb, l234info);
}
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
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (struct sk_buff*,scalar_t__,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static inline bool FUNC3(struct sk_buff *skb, int *network_depth,
					__be16 *proto)
{
	*proto = ((struct ethhdr *)skb->data)->h_proto;
	*proto = FUNC0(skb, *proto, network_depth);

	if (*proto == FUNC1(ETH_P_IP))
		return FUNC2(skb, *network_depth + sizeof(struct iphdr));

	if (*proto == FUNC1(ETH_P_IPV6))
		return FUNC2(skb, *network_depth + sizeof(struct ipv6hdr));

	return false;
}
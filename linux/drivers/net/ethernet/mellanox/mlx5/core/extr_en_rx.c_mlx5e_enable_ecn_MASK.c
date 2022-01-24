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
struct sk_buff {void* data; } ;
struct mlx5e_rq {TYPE_1__* stats; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {int ecn_mark; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int FUNC0 (struct sk_buff*,struct ipv6hdr*) ; 
 int FUNC1 (struct iphdr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int*,scalar_t__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct mlx5e_rq *rq, struct sk_buff *skb)
{
	int network_depth = 0;
	__be16 proto;
	void *ip;
	int rc;

	if (FUNC4(!FUNC3(skb, &network_depth, &proto)))
		return;

	ip = skb->data + network_depth;
	rc = ((proto == FUNC2(ETH_P_IP)) ? FUNC1((struct iphdr *)ip) :
					 FUNC0(skb, (struct ipv6hdr *)ip));

	rq->stats->ecn_mark += !!rc;
}
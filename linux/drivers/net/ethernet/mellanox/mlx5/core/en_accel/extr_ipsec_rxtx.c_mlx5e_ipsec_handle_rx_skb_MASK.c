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
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct mlx5e_ipsec_metadata {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 scalar_t__ MLX5E_METADATA_ETHER_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct xfrm_state* FUNC2 (struct net_device*,struct sk_buff*,struct mlx5e_ipsec_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

struct sk_buff *FUNC5(struct net_device *netdev,
					  struct sk_buff *skb, u32 *cqe_bcnt)
{
	struct mlx5e_ipsec_metadata *mdata;
	struct xfrm_state *xs;

	if (!FUNC0(skb))
		return skb;

	/* Use the metadata */
	mdata = (struct mlx5e_ipsec_metadata *)(skb->data + ETH_HLEN);
	xs = FUNC2(netdev, skb, mdata);
	if (FUNC4(!xs)) {
		FUNC1(skb);
		return NULL;
	}

	FUNC3(skb);
	*cqe_bcnt -= MLX5E_METADATA_ETHER_LEN;

	return skb;
}
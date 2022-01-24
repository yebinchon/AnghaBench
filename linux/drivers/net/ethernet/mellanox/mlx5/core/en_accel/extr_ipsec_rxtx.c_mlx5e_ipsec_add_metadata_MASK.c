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
struct sk_buff {int mac_header; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct mlx5e_ipsec_metadata {TYPE_1__ content; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5e_ipsec_metadata* FUNC0 (int /*<<< orphan*/ ) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MLX5E_METADATA_ETHER_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5e_ipsec_metadata *FUNC7(struct sk_buff *skb)
{
	struct mlx5e_ipsec_metadata *mdata;
	struct ethhdr *eth;

	if (FUNC6(FUNC4(skb, sizeof(*mdata))))
		return FUNC0(-ENOMEM);

	eth = (struct ethhdr *)FUNC5(skb, sizeof(*mdata));
	skb->mac_header -= sizeof(*mdata);
	mdata = (struct mlx5e_ipsec_metadata *)(eth + 1);

	FUNC2(skb->data, skb->data + sizeof(*mdata),
		2 * ETH_ALEN);

	eth->h_proto = FUNC1(MLX5E_METADATA_ETHER_TYPE);

	FUNC3(mdata->content.raw, 0, sizeof(mdata->content.raw));
	return mdata;
}
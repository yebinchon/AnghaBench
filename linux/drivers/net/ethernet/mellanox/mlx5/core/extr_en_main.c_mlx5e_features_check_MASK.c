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
struct sk_buff {scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_CSUM_MASK ; 
 int NETIF_F_GSO_MASK ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct net_device*,int) ; 
 int FUNC1 (struct mlx5e_priv*,struct sk_buff*,int) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sk_buff*,int) ; 

netdev_features_t FUNC5(struct sk_buff *skb,
				       struct net_device *netdev,
				       netdev_features_t features)
{
	struct mlx5e_priv *priv = FUNC2(netdev);

	features = FUNC3(skb, features);
	features = FUNC4(skb, features);

#ifdef CONFIG_MLX5_EN_IPSEC
	if (mlx5e_ipsec_feature_check(skb, netdev, features))
		return features;
#endif

	/* Validate if the tunneled packet is being offloaded by HW */
	if (skb->encapsulation &&
	    (features & NETIF_F_CSUM_MASK || features & NETIF_F_GSO_MASK))
		return FUNC1(priv, skb, features);

	return features;
}
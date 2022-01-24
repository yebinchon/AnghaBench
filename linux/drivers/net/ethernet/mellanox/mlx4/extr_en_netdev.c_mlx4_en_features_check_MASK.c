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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ vxlan_port; } ;
typedef  int netdev_features_t ;
struct TYPE_4__ {int version; } ;
struct TYPE_3__ {scalar_t__ dest; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int NETIF_F_CSUM_MASK ; 
 int NETIF_F_GSO_MASK ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct mlx4_en_priv* FUNC1 (struct net_device*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static netdev_features_t FUNC5(struct sk_buff *skb,
						struct net_device *dev,
						netdev_features_t features)
{
	features = FUNC3(skb, features);
	features = FUNC4(skb, features);

	/* The ConnectX-3 doesn't support outer IPv6 checksums but it does
	 * support inner IPv6 checksums and segmentation so  we need to
	 * strip that feature if this is an IPv6 encapsulated frame.
	 */
	if (skb->encapsulation &&
	    (skb->ip_summed == CHECKSUM_PARTIAL)) {
		struct mlx4_en_priv *priv = FUNC1(dev);

		if (!priv->vxlan_port ||
		    (FUNC0(skb)->version != 4) ||
		    (FUNC2(skb)->dest != priv->vxlan_port))
			features &= ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
	}

	return features;
}
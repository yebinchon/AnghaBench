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
struct net_device {int dummy; } ;
struct alx_priv {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_priv*,struct sk_buff*) ; 
 struct alx_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC3(struct sk_buff *skb,
				  struct net_device *netdev)
{
	struct alx_priv *alx = FUNC2(netdev);
	return FUNC0(skb, FUNC1(alx, skb));
}
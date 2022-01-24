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
struct sk_buff {size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_ring** tx_rings; } ;
struct i40e_ring {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_MIN_TX_LEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct i40e_ring*) ; 
 struct i40e_netdev_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC3(struct sk_buff *skb, struct net_device *netdev)
{
	struct i40e_netdev_priv *np = FUNC1(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_ring *tx_ring = vsi->tx_rings[skb->queue_mapping];

	/* hardware can't handle really short frames, hardware padding works
	 * beyond this point
	 */
	if (FUNC2(skb, I40E_MIN_TX_LEN))
		return NETDEV_TX_OK;

	return FUNC0(skb, tx_ring);
}
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
struct net_device {int dummy; } ;
struct moxart_mac_priv_t {int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  tx_head; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_DESC_NUM ; 
 struct moxart_mac_priv_t* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev)
{
	struct moxart_mac_priv_t *priv = FUNC1(ndev);

	return FUNC0(priv->tx_head, priv->tx_tail, TX_DESC_NUM);
}
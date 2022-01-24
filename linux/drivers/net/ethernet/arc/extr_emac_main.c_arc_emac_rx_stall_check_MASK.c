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
struct arc_emac_priv {size_t last_rx_bd; scalar_t__ rx_missed_errors; struct arc_emac_bd* rxbd; } ;
struct arc_emac_bd {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int FOR_EMAC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct arc_emac_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
				    int budget, unsigned int work_done)
{
	struct arc_emac_priv *priv = FUNC2(ndev);
	struct arc_emac_bd *rxbd;

	if (work_done)
		priv->rx_missed_errors = 0;

	if (priv->rx_missed_errors && budget) {
		rxbd = &priv->rxbd[priv->last_rx_bd];
		if (FUNC1(rxbd->info) & FOR_EMAC) {
			FUNC0(ndev);
			priv->rx_missed_errors = 0;
		}
	}
}
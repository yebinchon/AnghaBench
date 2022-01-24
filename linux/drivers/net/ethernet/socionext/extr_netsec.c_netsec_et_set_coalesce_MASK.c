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
struct ethtool_coalesce {int tx_coalesce_usecs; int tx_max_coalesced_frames; int rx_coalesce_usecs; int rx_max_coalesced_frames; } ;
struct netsec_priv {struct ethtool_coalesce et_coalesce; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETSEC_REG_NRM_RX_INTEN_SET ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_RX_RXINT_PKTCNT ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_RX_RXINT_TMR ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_TX_DONE_TXINT_PKTCNT ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_TX_INTEN_SET ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_TX_TXINT_TMR ; 
 int NRM_RX_ST_PKTCNT ; 
 int NRM_RX_ST_TMREXP ; 
 int NRM_TX_ST_TMREXP ; 
 int NRM_TX_ST_TXDONE ; 
 struct netsec_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_device,
				  struct ethtool_coalesce *et_coalesce)
{
	struct netsec_priv *priv = FUNC0(net_device);

	priv->et_coalesce = *et_coalesce;

	if (priv->et_coalesce.tx_coalesce_usecs < 50)
		priv->et_coalesce.tx_coalesce_usecs = 50;
	if (priv->et_coalesce.tx_max_coalesced_frames < 1)
		priv->et_coalesce.tx_max_coalesced_frames = 1;

	FUNC1(priv, NETSEC_REG_NRM_TX_DONE_TXINT_PKTCNT,
		     priv->et_coalesce.tx_max_coalesced_frames);
	FUNC1(priv, NETSEC_REG_NRM_TX_TXINT_TMR,
		     priv->et_coalesce.tx_coalesce_usecs);
	FUNC1(priv, NETSEC_REG_NRM_TX_INTEN_SET, NRM_TX_ST_TXDONE);
	FUNC1(priv, NETSEC_REG_NRM_TX_INTEN_SET, NRM_TX_ST_TMREXP);

	if (priv->et_coalesce.rx_coalesce_usecs < 50)
		priv->et_coalesce.rx_coalesce_usecs = 50;
	if (priv->et_coalesce.rx_max_coalesced_frames < 1)
		priv->et_coalesce.rx_max_coalesced_frames = 1;

	FUNC1(priv, NETSEC_REG_NRM_RX_RXINT_PKTCNT,
		     priv->et_coalesce.rx_max_coalesced_frames);
	FUNC1(priv, NETSEC_REG_NRM_RX_RXINT_TMR,
		     priv->et_coalesce.rx_coalesce_usecs);
	FUNC1(priv, NETSEC_REG_NRM_RX_INTEN_SET, NRM_RX_ST_PKTCNT);
	FUNC1(priv, NETSEC_REG_NRM_RX_INTEN_SET, NRM_RX_ST_TMREXP);

	return 0;
}
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
struct ipw_priv {scalar_t__ rx_pend_max; scalar_t__ rx_bufs_min; int /*<<< orphan*/ * txq; int /*<<< orphan*/  txq_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_TX_CMD_QUEUE_BD_BASE ; 
 int /*<<< orphan*/  IPW_TX_CMD_QUEUE_BD_SIZE ; 
 int /*<<< orphan*/  IPW_TX_CMD_QUEUE_READ_INDEX ; 
 int /*<<< orphan*/  IPW_TX_CMD_QUEUE_WRITE_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_0_BD_BASE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_0_BD_SIZE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_0_READ_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_0_WRITE_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_1_BD_BASE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_1_BD_SIZE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_1_READ_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_1_WRITE_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_2_BD_BASE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_2_BD_SIZE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_2_READ_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_2_WRITE_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_3_BD_BASE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_3_BD_SIZE ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_3_READ_INDEX ; 
 int /*<<< orphan*/  IPW_TX_QUEUE_3_WRITE_INDEX ; 
 int FUNC1 (struct ipw_priv*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 

__attribute__((used)) static int FUNC3(struct ipw_priv *priv)
{
	int rc = 0;
	/** @todo customize queue sizes */
	int nTx = 64, nTxCmd = 8;
	FUNC2(priv);
	/* Tx CMD queue */
	rc = FUNC1(priv, &priv->txq_cmd, nTxCmd,
			       IPW_TX_CMD_QUEUE_READ_INDEX,
			       IPW_TX_CMD_QUEUE_WRITE_INDEX,
			       IPW_TX_CMD_QUEUE_BD_BASE,
			       IPW_TX_CMD_QUEUE_BD_SIZE);
	if (rc) {
		FUNC0("Tx Cmd queue init failed\n");
		goto error;
	}
	/* Tx queue(s) */
	rc = FUNC1(priv, &priv->txq[0], nTx,
			       IPW_TX_QUEUE_0_READ_INDEX,
			       IPW_TX_QUEUE_0_WRITE_INDEX,
			       IPW_TX_QUEUE_0_BD_BASE, IPW_TX_QUEUE_0_BD_SIZE);
	if (rc) {
		FUNC0("Tx 0 queue init failed\n");
		goto error;
	}
	rc = FUNC1(priv, &priv->txq[1], nTx,
			       IPW_TX_QUEUE_1_READ_INDEX,
			       IPW_TX_QUEUE_1_WRITE_INDEX,
			       IPW_TX_QUEUE_1_BD_BASE, IPW_TX_QUEUE_1_BD_SIZE);
	if (rc) {
		FUNC0("Tx 1 queue init failed\n");
		goto error;
	}
	rc = FUNC1(priv, &priv->txq[2], nTx,
			       IPW_TX_QUEUE_2_READ_INDEX,
			       IPW_TX_QUEUE_2_WRITE_INDEX,
			       IPW_TX_QUEUE_2_BD_BASE, IPW_TX_QUEUE_2_BD_SIZE);
	if (rc) {
		FUNC0("Tx 2 queue init failed\n");
		goto error;
	}
	rc = FUNC1(priv, &priv->txq[3], nTx,
			       IPW_TX_QUEUE_3_READ_INDEX,
			       IPW_TX_QUEUE_3_WRITE_INDEX,
			       IPW_TX_QUEUE_3_BD_BASE, IPW_TX_QUEUE_3_BD_SIZE);
	if (rc) {
		FUNC0("Tx 3 queue init failed\n");
		goto error;
	}
	/* statistics */
	priv->rx_bufs_min = 0;
	priv->rx_pend_max = 0;
	return rc;

      error:
	FUNC2(priv);
	return rc;
}
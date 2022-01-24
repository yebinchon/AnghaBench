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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct ieee802154_hw {struct cc2520_private* priv; } ;
struct cc2520_private {int is_tx; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_complete; TYPE_1__* spi; scalar_t__ promiscuous; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC2520_CMD_SFLUSHTX ; 
 int /*<<< orphan*/  CC2520_CMD_SRXON ; 
 int /*<<< orphan*/  CC2520_CMD_STXONCCA ; 
 int CC2520_STATUS_TX_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cc2520_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cc2520_private*,int*) ; 
 int FUNC3 (struct cc2520_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct ieee802154_hw *hw, struct sk_buff *skb)
{
	struct cc2520_private *priv = hw->priv;
	unsigned long flags;
	int rc;
	u8 status = 0;
	u8 pkt_len;

	/* In promiscuous mode we disable AUTOCRC so we can get the raw CRC
	 * values on RX. This means we need to manually add the CRC on TX.
	 */
	if (priv->promiscuous) {
		u16 crc = FUNC4(0, skb->data, skb->len);

		FUNC6(crc, FUNC7(skb, 2));
		pkt_len = skb->len;
	} else {
		pkt_len = skb->len + 2;
	}

	rc = FUNC1(priv, CC2520_CMD_SFLUSHTX);
	if (rc)
		goto err_tx;

	rc = FUNC3(priv, pkt_len, skb->data, skb->len);
	if (rc)
		goto err_tx;

	rc = FUNC2(priv, &status);
	if (rc)
		goto err_tx;

	if (status & CC2520_STATUS_TX_UNDERFLOW) {
		FUNC5(&priv->spi->dev, "cc2520 tx underflow exception\n");
		goto err_tx;
	}

	FUNC8(&priv->lock, flags);
	FUNC0(priv->is_tx);
	priv->is_tx = 1;
	FUNC9(&priv->lock, flags);

	rc = FUNC1(priv, CC2520_CMD_STXONCCA);
	if (rc)
		goto err;

	rc = FUNC10(&priv->tx_complete);
	if (rc < 0)
		goto err;

	FUNC1(priv, CC2520_CMD_SFLUSHTX);
	FUNC1(priv, CC2520_CMD_SRXON);

	return rc;
err:
	FUNC8(&priv->lock, flags);
	priv->is_tx = 0;
	FUNC9(&priv->lock, flags);
err_tx:
	return rc;
}
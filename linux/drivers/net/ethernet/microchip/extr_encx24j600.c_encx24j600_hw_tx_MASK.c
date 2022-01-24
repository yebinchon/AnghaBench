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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct encx24j600_priv {TYPE_1__* tx_skb; struct net_device* ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGPWRPT ; 
 int /*<<< orphan*/  EIR ; 
 int /*<<< orphan*/  ENC_TX_BUF_START ; 
 int /*<<< orphan*/  ETXLEN ; 
 int /*<<< orphan*/  ETXST ; 
 int /*<<< orphan*/  SETTXRTS ; 
 int TXABTIF ; 
 int /*<<< orphan*/  TXIF ; 
 int /*<<< orphan*/  WGPDATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct encx24j600_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  tx_queued ; 

__attribute__((used)) static void FUNC9(struct encx24j600_priv *priv)
{
	struct net_device *dev = priv->ndev;

	FUNC7(priv, tx_queued, dev, "TX Packet Len:%d\n",
		   priv->tx_skb->len);

	if (FUNC8(priv))
		FUNC0("TX", priv->tx_skb->len, priv->tx_skb->data);

	if (FUNC4(priv, EIR) & TXABTIF)
		/* Last transmition aborted due to error. Reset TX interface */
		FUNC5(priv);

	/* Clear the TXIF flag if were previously set */
	FUNC1(priv, EIR, TXIF);

	/* Set the data pointer to the TX buffer address in the SRAM */
	FUNC6(priv, EGPWRPT, ENC_TX_BUF_START);

	/* Copy the packet into the SRAM */
	FUNC3(priv, WGPDATA, (u8 *)priv->tx_skb->data,
			     priv->tx_skb->len);

	/* Program the Tx buffer start pointer */
	FUNC6(priv, ETXST, ENC_TX_BUF_START);

	/* Program the packet length */
	FUNC6(priv, ETXLEN, priv->tx_skb->len);

	/* Start the transmission */
	FUNC2(priv, SETTXRTS);
}
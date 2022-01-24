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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  rx_dmatsk; } ;
struct bcom_fec_bd {int /*<<< orphan*/  skb_pa; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FEC_RX_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpc52xx_fec_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void
FUNC4(struct net_device *dev, struct sk_buff *rskb)
{
	struct mpc52xx_fec_priv *priv = FUNC3(dev);
	struct bcom_fec_bd *bd;

	bd = (struct bcom_fec_bd *) FUNC0(priv->rx_dmatsk);
	bd->status = FEC_RX_BUFFER_SIZE;
	bd->skb_pa = FUNC2(dev->dev.parent, rskb->data,
				    FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);
	FUNC1(priv->rx_dmatsk, rskb);
}
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
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {int /*<<< orphan*/  lock; struct net_device* ndev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLREIE ; 
 int /*<<< orphan*/  EIR ; 
 int /*<<< orphan*/  ESTAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int LINKIF ; 
 int PCFULIF ; 
 int PKTIF ; 
 int RXABTIF ; 
 int /*<<< orphan*/  SETEIE ; 
 int TXABTIF ; 
 int TXIF ; 
 int /*<<< orphan*/  FUNC0 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*) ; 
 int FUNC3 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct encx24j600_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct encx24j600_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct encx24j600_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  rx_err ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct encx24j600_priv *priv = dev_id;
	struct net_device *dev = priv->ndev;
	int eir;

	/* Clear interrupts */
	FUNC1(priv, CLREIE);

	eir = FUNC3(priv, EIR);

	if (eir & LINKIF)
		FUNC2(priv);

	if (eir & TXIF)
		FUNC5(priv, false);

	if (eir & TXABTIF)
		FUNC5(priv, true);

	if (eir & RXABTIF) {
		if (eir & PCFULIF) {
			/* Packet counter is full */
			FUNC8(priv, rx_err, dev, "Packet counter full\n");
		}
		dev->stats.rx_dropped++;
		FUNC0(priv, EIR, RXABTIF);
	}

	if (eir & PKTIF) {
		u8 packet_count;

		FUNC6(&priv->lock);

		packet_count = FUNC3(priv, ESTAT) & 0xff;
		while (packet_count) {
			FUNC4(priv, packet_count);
			packet_count = FUNC3(priv, ESTAT) & 0xff;
		}

		FUNC7(&priv->lock);
	}

	/* Enable interrupts */
	FUNC1(priv, SETEIE);

	return IRQ_HANDLED;
}
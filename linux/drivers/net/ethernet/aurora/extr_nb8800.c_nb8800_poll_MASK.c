#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int rx_bytes; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
struct nb8800_rx_desc {int report; TYPE_2__ desc; } ;
struct nb8800_priv {unsigned int rx_eoc; struct nb8800_rx_desc* rx_descs; int /*<<< orphan*/  rx_itr_irq; } ;
struct napi_struct {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_EOC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  NB8800_RX_ITR ; 
 unsigned int FUNC1 (int) ; 
 unsigned int RX_DESC_COUNT ; 
 int RX_MULTICAST_PKT ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nb8800_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nb8800_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct napi_struct *napi, int budget)
{
	struct net_device *dev = napi->dev;
	struct nb8800_priv *priv = FUNC8(dev);
	struct nb8800_rx_desc *rxd;
	unsigned int last = priv->rx_eoc;
	unsigned int next;
	int work = 0;

	FUNC6(dev);

again:
	do {
		unsigned int len;

		next = (last + 1) % RX_DESC_COUNT;

		rxd = &priv->rx_descs[next];

		if (!rxd->report)
			break;

		len = FUNC1(rxd->report);

		if (FUNC0(rxd->report))
			FUNC4(dev, rxd->report);
		else
			FUNC3(dev, next, len);

		dev->stats.rx_packets++;
		dev->stats.rx_bytes += len;

		if (rxd->report & RX_MULTICAST_PKT)
			dev->stats.multicast++;

		rxd->report = 0;
		last = next;
		work++;
	} while (work < budget);

	if (work) {
		priv->rx_descs[last].desc.config |= DESC_EOC;
		FUNC9();	/* ensure new EOC is written before clearing old */
		priv->rx_descs[priv->rx_eoc].desc.config &= ~DESC_EOC;
		priv->rx_eoc = last;
		FUNC5(dev);
	}

	if (work < budget) {
		FUNC7(priv, NB8800_RX_ITR, priv->rx_itr_irq);

		/* If a packet arrived after we last checked but
		 * before writing RX_ITR, the interrupt will be
		 * delayed, so we retrieve it now.
		 */
		if (priv->rx_descs[next].report)
			goto again;

		FUNC2(napi, work);
	}

	return work;
}
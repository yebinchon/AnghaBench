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
struct TYPE_3__ {int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_crc_errors; } ;
struct tsi108_prv_data {int rxtail; TYPE_2__* rxring; int /*<<< orphan*/  misclock; TYPE_1__ stats; scalar_t__ rxfree; struct sk_buff** rxskbs; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/ * data; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int misc; int len; } ;

/* Variables and functions */
 int TSI108_RXRING_LEN ; 
 int TSI108_RX_BAD ; 
 int TSI108_RX_CRC ; 
 int TSI108_RX_OVER ; 
 int TSI108_RX_OWN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct tsi108_prv_data* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct tsi108_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, int budget)
{
	struct tsi108_prv_data *data = FUNC2(dev);
	int done = 0;

	while (data->rxfree && done != budget) {
		int rx = data->rxtail;
		struct sk_buff *skb;

		if (data->rxring[rx].misc & TSI108_RX_OWN)
			break;

		skb = data->rxskbs[rx];
		data->rxtail = (data->rxtail + 1) % TSI108_RXRING_LEN;
		data->rxfree--;
		done++;

		if (data->rxring[rx].misc & TSI108_RX_BAD) {
			FUNC7(&data->misclock);

			if (data->rxring[rx].misc & TSI108_RX_CRC)
				data->stats.rx_crc_errors++;
			if (data->rxring[rx].misc & TSI108_RX_OVER)
				data->stats.rx_fifo_errors++;

			FUNC8(&data->misclock);

			FUNC0(skb);
			continue;
		}
		if (FUNC3(data)) {
			int i;
			FUNC5("%s: Rx Frame contents (%d)\n",
			       dev->name, data->rxring[rx].len);
			for (i = 0; i < data->rxring[rx].len; i++)
				FUNC5(" %2.2x", skb->data[i]);
			FUNC5(".\n");
		}

		FUNC6(skb, data->rxring[rx].len);
		skb->protocol = FUNC1(skb, dev);
		FUNC4(skb);
	}

	return done;
}
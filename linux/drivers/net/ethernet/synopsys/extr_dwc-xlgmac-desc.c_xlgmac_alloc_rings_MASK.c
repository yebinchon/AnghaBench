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
struct xlgmac_pdata {unsigned int channel_count; int /*<<< orphan*/  netdev; int /*<<< orphan*/  rx_desc_count; int /*<<< orphan*/  tx_desc_count; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  name; int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xlgmac_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*) ; 
 int FUNC3 (struct xlgmac_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xlgmac_pdata *pdata)
{
	struct xlgmac_channel *channel;
	unsigned int i;
	int ret;

	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		FUNC1(pdata, drv, pdata->netdev, "%s - Tx ring:\n",
			  channel->name);

		ret = FUNC3(pdata, channel->tx_ring,
				       pdata->tx_desc_count);

		if (ret) {
			FUNC0(pdata->netdev,
				     "error initializing Tx ring");
			goto err_init_ring;
		}

		FUNC1(pdata, drv, pdata->netdev, "%s - Rx ring:\n",
			  channel->name);

		ret = FUNC3(pdata, channel->rx_ring,
				       pdata->rx_desc_count);
		if (ret) {
			FUNC0(pdata->netdev,
				     "error initializing Rx ring\n");
			goto err_init_ring;
		}
	}

	return 0;

err_init_ring:
	FUNC2(pdata);

	return ret;
}
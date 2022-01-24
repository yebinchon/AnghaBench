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
struct netvsc_device_info {int dummy; } ;
struct netvsc_device {int /*<<< orphan*/  rcu; struct netvsc_channel* chan_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  syncp; } ;
struct TYPE_3__ {int /*<<< orphan*/  syncp; } ;
struct netvsc_channel {int /*<<< orphan*/  napi; TYPE_2__ rx_stats; TYPE_1__ tx_stats; struct netvsc_device* net_device; int /*<<< orphan*/  channel; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; scalar_t__* tx_table; } ;
struct net_device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct netvsc_device* FUNC0 (int) ; 
 int /*<<< orphan*/  HV_CALL_ISR ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int VRSS_CHANNEL_MAX ; 
 int VRSS_SEND_TAB_SIZE ; 
 struct netvsc_device* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,int) ; 
 struct net_device_context* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netvsc_channel_cb ; 
 int FUNC12 (struct hv_device*,struct netvsc_device*,struct netvsc_device_info const*) ; 
 int /*<<< orphan*/  netvsc_poll ; 
 int /*<<< orphan*/  netvsc_ring_bytes ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct netvsc_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netvsc_channel*) ; 

struct netvsc_device *FUNC18(struct hv_device *device,
				const struct netvsc_device_info *device_info)
{
	int i, ret = 0;
	struct netvsc_device *net_device;
	struct net_device *ndev = FUNC4(device);
	struct net_device_context *net_device_ctx = FUNC9(ndev);

	net_device = FUNC2();
	if (!net_device)
		return FUNC0(-ENOMEM);

	for (i = 0; i < VRSS_SEND_TAB_SIZE; i++)
		net_device_ctx->tx_table[i] = 0;

	/* Because the device uses NAPI, all the interrupt batching and
	 * control is done via Net softirq, not the channel handling
	 */
	FUNC14(device->channel, HV_CALL_ISR);

	/* If we're reopening the device we may have multiple queues, fill the
	 * chn_table with the default channel to use it before subchannels are
	 * opened.
	 * Initialize the channel state before we open;
	 * we can be interrupted as soon as we open the channel.
	 */

	for (i = 0; i < VRSS_CHANNEL_MAX; i++) {
		struct netvsc_channel *nvchan = &net_device->chan_table[i];

		nvchan->channel = device->channel;
		nvchan->net_device = net_device;
		FUNC15(&nvchan->tx_stats.syncp);
		FUNC15(&nvchan->rx_stats.syncp);
	}

	/* Enable NAPI handler before init callbacks */
	FUNC10(ndev, &net_device->chan_table[0].napi,
		       netvsc_poll, NAPI_POLL_WEIGHT);

	/* Open the channel */
	ret = FUNC17(device->channel, netvsc_ring_bytes,
			 netvsc_ring_bytes,  NULL, 0,
			 netvsc_channel_cb, net_device->chan_table);

	if (ret != 0) {
		FUNC8(ndev, "unable to open channel: %d\n", ret);
		goto cleanup;
	}

	/* Channel is opened */
	FUNC7(ndev, "hv_netvsc channel opened successfully\n");

	FUNC6(&net_device->chan_table[0].napi);

	/* Connect with the NetVsp */
	ret = FUNC12(device, net_device, device_info);
	if (ret != 0) {
		FUNC8(ndev,
			"unable to connect to NetVSP - %d\n", ret);
		goto close;
	}

	/* Writing nvdev pointer unlocks netvsc_send(), make sure chn_table is
	 * populated.
	 */
	FUNC13(net_device_ctx->nvdev, net_device);

	return net_device;

close:
	FUNC1(net_device_ctx->nvdev, NULL);
	FUNC5(&net_device->chan_table[0].napi);

	/* Now, we can close the channel safely */
	FUNC16(device->channel);

cleanup:
	FUNC11(&net_device->chan_table[0].napi);
	FUNC3(&net_device->rcu);

	return FUNC0(ret);
}
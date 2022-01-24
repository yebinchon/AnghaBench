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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int offload_fwd_mark; int /*<<< orphan*/  protocol; } ;
struct ocelot {int bridge_mask; int /*<<< orphan*/  ptp_info; scalar_t__ ptp; TYPE_1__** ports; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int features; TYPE_2__ stats; } ;
struct frame_info {size_t port; int len; int timestamp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct net_device* dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int ETH_FCS_LEN ; 
 int FUNC1 (int,int) ; 
 int IFH_LEN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int NETIF_F_RXFCS ; 
 int /*<<< orphan*/  QS_XTR_DATA_PRESENT ; 
 int /*<<< orphan*/  QS_XTR_RD ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct frame_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct timespec64*) ; 
 int FUNC10 (struct ocelot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ocelot*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct ocelot*,int,int,int /*<<< orphan*/ *) ; 
 struct skb_shared_hwtstamps* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static irqreturn_t FUNC16(int irq, void *arg)
{
	struct ocelot *ocelot = arg;
	int i = 0, grp = 0;
	int err = 0;

	if (!(FUNC10(ocelot, QS_XTR_DATA_PRESENT) & FUNC0(grp)))
		return IRQ_NONE;

	do {
		struct skb_shared_hwtstamps *shhwtstamps;
		u64 tod_in_ns, full_ts_in_ns;
		struct frame_info info = {};
		struct net_device *dev;
		u32 ifh[4], val, *buf;
		struct timespec64 ts;
		int sz, len, buf_len;
		struct sk_buff *skb;

		for (i = 0; i < IFH_LEN; i++) {
			err = FUNC12(ocelot, grp, true, &ifh[i]);
			if (err != 4)
				break;
		}

		if (err != 4)
			break;

		FUNC8(ifh, &info);

		dev = ocelot->ports[info.port]->dev;

		skb = FUNC5(dev, info.len);

		if (FUNC15(!skb)) {
			FUNC6(dev, "Unable to allocate sk_buff\n");
			err = -ENOMEM;
			break;
		}
		buf_len = info.len - ETH_FCS_LEN;
		buf = (u32 *)FUNC14(skb, buf_len);

		len = 0;
		do {
			sz = FUNC12(ocelot, grp, false, &val);
			*buf++ = val;
			len += sz;
		} while (len < buf_len);

		/* Read the FCS */
		sz = FUNC12(ocelot, grp, false, &val);
		/* Update the statistics if part of the FCS was read before */
		len -= ETH_FCS_LEN - sz;

		if (FUNC15(dev->features & NETIF_F_RXFCS)) {
			buf = (u32 *)FUNC14(skb, ETH_FCS_LEN);
			*buf = val;
		}

		if (sz < 0) {
			err = sz;
			break;
		}

		if (ocelot->ptp) {
			FUNC9(&ocelot->ptp_info, &ts);

			tod_in_ns = FUNC3(ts.tv_sec, ts.tv_nsec);
			if ((tod_in_ns & 0xffffffff) < info.timestamp)
				full_ts_in_ns = (((tod_in_ns >> 32) - 1) << 32) |
						info.timestamp;
			else
				full_ts_in_ns = (tod_in_ns & FUNC1(63, 32)) |
						info.timestamp;

			shhwtstamps = FUNC13(skb);
			FUNC4(shhwtstamps, 0, sizeof(struct skb_shared_hwtstamps));
			shhwtstamps->hwtstamp = full_ts_in_ns;
		}

		/* Everything we see on an interface that is in the HW bridge
		 * has already been forwarded.
		 */
		if (ocelot->bridge_mask & FUNC0(info.port))
			skb->offload_fwd_mark = 1;

		skb->protocol = FUNC2(skb, dev);
		FUNC7(skb);
		dev->stats.rx_bytes += len;
		dev->stats.rx_packets++;
	} while (FUNC10(ocelot, QS_XTR_DATA_PRESENT) & FUNC0(grp));

	if (err)
		while (FUNC10(ocelot, QS_XTR_DATA_PRESENT) & FUNC0(grp))
			FUNC11(ocelot, QS_XTR_RD, grp);

	return IRQ_HANDLED;
}
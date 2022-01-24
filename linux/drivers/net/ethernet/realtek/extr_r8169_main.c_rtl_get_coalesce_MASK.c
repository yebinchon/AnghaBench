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
typedef  int u32 ;
typedef  int u16 ;
struct rtl_coalesce_scale {int* nsecs; } ;
struct rtl_coalesce_info {struct rtl_coalesce_scale* scalev; } ;
struct rtl8169_private {size_t cp_cmd; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int /*<<< orphan*/  tx_coalesce_usecs; int /*<<< orphan*/  tx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; int /*<<< orphan*/  rx_max_coalesced_frames; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 size_t INTT_MASK ; 
 scalar_t__ FUNC0 (struct rtl_coalesce_info const*) ; 
 int /*<<< orphan*/  IntrMitigate ; 
 int FUNC1 (struct rtl_coalesce_info const*) ; 
 int RTL_COALESCE_MASK ; 
 int RTL_COALESCE_SHIFT ; 
 int FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ethtool_coalesce*,int /*<<< orphan*/ ,int) ; 
 struct rtl8169_private* FUNC4 (struct net_device*) ; 
 struct rtl_coalesce_info* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ethtool_coalesce *ec)
{
	struct rtl8169_private *tp = FUNC4(dev);
	const struct rtl_coalesce_info *ci;
	const struct rtl_coalesce_scale *scale;
	struct {
		u32 *max_frames;
		u32 *usecs;
	} coal_settings [] = {
		{ &ec->rx_max_coalesced_frames, &ec->rx_coalesce_usecs },
		{ &ec->tx_max_coalesced_frames, &ec->tx_coalesce_usecs }
	}, *p = coal_settings;
	int i;
	u16 w;

	if (FUNC6(tp))
		return -EOPNOTSUPP;

	FUNC3(ec, 0, sizeof(*ec));

	/* get rx/tx scale corresponding to current speed and CPlusCmd[0:1] */
	ci = FUNC5(dev);
	if (FUNC0(ci))
		return FUNC1(ci);

	scale = &ci->scalev[tp->cp_cmd & INTT_MASK];

	/* read IntrMitigate and adjust according to scale */
	for (w = FUNC2(tp, IntrMitigate); w; w >>= RTL_COALESCE_SHIFT, p++) {
		*p->max_frames = (w & RTL_COALESCE_MASK) << 2;
		w >>= RTL_COALESCE_SHIFT;
		*p->usecs = w & RTL_COALESCE_MASK;
	}

	for (i = 0; i < 2; i++) {
		p = coal_settings + i;
		*p->usecs = (*p->usecs * scale->nsecs[i]) / 1000;

		/*
		 * ethtool_coalesce says it is illegal to set both usecs and
		 * max_frames to 0.
		 */
		if (!*p->usecs && !*p->max_frames)
			*p->max_frames = 1;
	}

	return 0;
}
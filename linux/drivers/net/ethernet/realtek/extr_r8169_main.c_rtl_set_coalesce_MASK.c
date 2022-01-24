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
struct rtl8169_private {int cp_cmd; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int /*<<< orphan*/  tx_coalesce_usecs; int /*<<< orphan*/  tx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; int /*<<< orphan*/  rx_max_coalesced_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPlusCmd ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int INTT_MASK ; 
 scalar_t__ FUNC0 (struct rtl_coalesce_scale const*) ; 
 int /*<<< orphan*/  IntrMitigate ; 
 int FUNC1 (struct rtl_coalesce_scale const*) ; 
 int RTL_COALESCE_FRAME_MAX ; 
 int RTL_COALESCE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 struct rtl8169_private* FUNC5 (struct net_device*) ; 
 struct rtl_coalesce_scale* FUNC6 (struct net_device*,int,int*) ; 
 scalar_t__ FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, struct ethtool_coalesce *ec)
{
	struct rtl8169_private *tp = FUNC5(dev);
	const struct rtl_coalesce_scale *scale;
	struct {
		u32 frames;
		u32 usecs;
	} coal_settings [] = {
		{ ec->rx_max_coalesced_frames, ec->rx_coalesce_usecs },
		{ ec->tx_max_coalesced_frames, ec->tx_coalesce_usecs }
	}, *p = coal_settings;
	u16 w = 0, cp01;
	int i;

	if (FUNC7(tp))
		return -EOPNOTSUPP;

	scale = FUNC6(dev,
			FUNC4(p[0].usecs, p[1].usecs) * 1000, &cp01);
	if (FUNC0(scale))
		return FUNC1(scale);

	for (i = 0; i < 2; i++, p++) {
		u32 units;

		/*
		 * accept max_frames=1 we returned in rtl_get_coalesce.
		 * accept it not only when usecs=0 because of e.g. the following scenario:
		 *
		 * - both rx_usecs=0 & rx_frames=0 in hardware (no delay on RX)
		 * - rtl_get_coalesce returns rx_usecs=0, rx_frames=1
		 * - then user does `ethtool -C eth0 rx-usecs 100`
		 *
		 * since ethtool sends to kernel whole ethtool_coalesce
		 * settings, if we do not handle rx_usecs=!0, rx_frames=1
		 * we'll reject it below in `frames % 4 != 0`.
		 */
		if (p->frames == 1) {
			p->frames = 0;
		}

		units = p->usecs * 1000 / scale->nsecs[i];
		if (p->frames > RTL_COALESCE_FRAME_MAX || p->frames % 4)
			return -EINVAL;

		w <<= RTL_COALESCE_SHIFT;
		w |= units;
		w <<= RTL_COALESCE_SHIFT;
		w |= p->frames >> 2;
	}

	FUNC8(tp);

	FUNC3(tp, IntrMitigate, FUNC10(w));

	tp->cp_cmd = (tp->cp_cmd & ~INTT_MASK) | cp01;
	FUNC3(tp, CPlusCmd, tp->cp_cmd);
	FUNC2(tp, CPlusCmd);

	FUNC9(tp);

	return 0;
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int dummy; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
#define  ETH_SS_PRIV_FLAGS 129 
#define  ETH_SS_STATS 128 
 int PRIV_FLAGS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct ionic_lif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ionic_priv_flags_strings ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ionic_lif* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
			      u32 sset, u8 *buf)
{
	struct ionic_lif *lif = FUNC2(netdev);

	switch (sset) {
	case ETH_SS_STATS:
		FUNC0(lif, buf);
		break;
	case ETH_SS_PRIV_FLAGS:
		FUNC1(buf, ionic_priv_flags_strings,
		       PRIV_FLAGS_COUNT * ETH_GSTRING_LEN);
		break;
	}
}
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
struct link_config {int /*<<< orphan*/  fec; int /*<<< orphan*/  pcaps; } ;
struct port_info {struct link_config link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_fecparam {int /*<<< orphan*/  active_fec; int /*<<< orphan*/  fec; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_FEC_AUTO ; 
 int /*<<< orphan*/  ETHTOOL_FEC_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct port_info* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				struct ethtool_fecparam *fec)
{
	const struct port_info *pi = FUNC2(dev);
	const struct link_config *lc = &pi->link_cfg;

	/* Translate the Firmware FEC Support into the ethtool value.  We
	 * always support IEEE 802.3 "automatic" selection of Link FEC type if
	 * any FEC is supported.
	 */
	fec->fec = FUNC1(lc->pcaps);
	if (fec->fec != ETHTOOL_FEC_OFF)
		fec->fec |= ETHTOOL_FEC_AUTO;

	/* Translate the current internal FEC parameters into the
	 * ethtool values.
	 */
	fec->active_fec = FUNC0(lc->fec);
	return 0;
}
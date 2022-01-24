#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {struct ionic* ionic; } ;
struct ionic_dev {TYPE_3__* port_info; } ;
struct ionic {int /*<<< orphan*/  dev_cmd_lock; struct ionic_dev idev; } ;
struct TYPE_4__ {scalar_t__ autoneg; scalar_t__ speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct TYPE_5__ {scalar_t__ an_enable; scalar_t__ fec_type; int /*<<< orphan*/  speed; } ;
struct TYPE_6__ {TYPE_2__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FEC_BASER ; 
 int /*<<< orphan*/  FEC_RS ; 
 scalar_t__ IONIC_PORT_FEC_TYPE_FC ; 
 scalar_t__ IONIC_PORT_FEC_TYPE_NONE ; 
 scalar_t__ IONIC_PORT_FEC_TYPE_RS ; 
 int /*<<< orphan*/  advertising ; 
 int FUNC0 (struct ethtool_link_ksettings const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ionic_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_dev*,scalar_t__) ; 
 int FUNC4 (struct ionic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*) ; 
 struct ionic_lif* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
				    const struct ethtool_link_ksettings *ks)
{
	struct ionic_lif *lif = FUNC9(netdev);
	struct ionic *ionic = lif->ionic;
	struct ionic_dev *idev;
	u32 req_rs, req_fc;
	u8 fec_type;
	int err = 0;

	idev = &lif->ionic->idev;
	fec_type = IONIC_PORT_FEC_TYPE_NONE;

	/* set autoneg */
	if (ks->base.autoneg != idev->port_info->config.an_enable) {
		FUNC6(&ionic->dev_cmd_lock);
		FUNC1(idev, ks->base.autoneg);
		err = FUNC4(ionic, DEVCMD_TIMEOUT);
		FUNC7(&ionic->dev_cmd_lock);
		if (err)
			return err;
	}

	/* set speed */
	if (ks->base.speed != FUNC5(idev->port_info->config.speed)) {
		FUNC6(&ionic->dev_cmd_lock);
		FUNC3(idev, ks->base.speed);
		err = FUNC4(ionic, DEVCMD_TIMEOUT);
		FUNC7(&ionic->dev_cmd_lock);
		if (err)
			return err;
	}

	/* set FEC */
	req_rs = FUNC0(ks, advertising, FEC_RS);
	req_fc = FUNC0(ks, advertising, FEC_BASER);
	if (req_rs && req_fc) {
		FUNC8(netdev, "Only select one FEC mode at a time\n");
		return -EINVAL;
	} else if (req_fc) {
		fec_type = IONIC_PORT_FEC_TYPE_FC;
	} else if (req_rs) {
		fec_type = IONIC_PORT_FEC_TYPE_RS;
	} else if (!(req_rs | req_fc)) {
		fec_type = IONIC_PORT_FEC_TYPE_NONE;
	}

	if (fec_type != idev->port_info->config.fec_type) {
		FUNC6(&ionic->dev_cmd_lock);
		FUNC2(idev, fec_type);
		err = FUNC4(ionic, DEVCMD_TIMEOUT);
		FUNC7(&ionic->dev_cmd_lock);
		if (err)
			return err;
	}

	return 0;
}
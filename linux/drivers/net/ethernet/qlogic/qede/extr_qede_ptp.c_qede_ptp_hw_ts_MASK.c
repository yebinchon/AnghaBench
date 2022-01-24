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
struct qede_ptp {int hw_ts_ioctl_called; int /*<<< orphan*/  rx_filter; int /*<<< orphan*/  tx_type; } ;
struct qede_dev {struct qede_ptp* ptp; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int /*<<< orphan*/  rx_filter; int /*<<< orphan*/  tx_type; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
 scalar_t__ FUNC2 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int FUNC4 (struct qede_dev*) ; 

int FUNC5(struct qede_dev *edev, struct ifreq *ifr)
{
	struct hwtstamp_config config;
	struct qede_ptp *ptp;
	int rc;

	ptp = edev->ptp;
	if (!ptp)
		return -EIO;

	if (FUNC2(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	FUNC1(edev, QED_MSG_DEBUG,
		   "HWTSTAMP IOCTL: Requested tx_type = %d, requested rx_filters = %d\n",
		   config.tx_type, config.rx_filter);

	if (config.flags) {
		FUNC0(edev, "config.flags is reserved for future use\n");
		return -EINVAL;
	}

	ptp->hw_ts_ioctl_called = 1;
	ptp->tx_type = config.tx_type;
	ptp->rx_filter = config.rx_filter;

	rc = FUNC4(edev);
	if (rc)
		return rc;

	config.rx_filter = ptp->rx_filter;

	return FUNC3(ifr->ifr_data, &config,
			    sizeof(config)) ? -EFAULT : 0;
}
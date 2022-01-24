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
struct net_device {int dummy; } ;
struct lio {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ERANGE ; 
 struct lio* FUNC0 (struct net_device*) ; 
#define  HWTSTAMP_FILTER_ALL 145 
#define  HWTSTAMP_FILTER_NONE 144 
#define  HWTSTAMP_FILTER_NTP_ALL 143 
#define  HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ 142 
#define  HWTSTAMP_FILTER_PTP_V1_L4_EVENT 141 
#define  HWTSTAMP_FILTER_PTP_V1_L4_SYNC 140 
#define  HWTSTAMP_FILTER_PTP_V2_DELAY_REQ 139 
#define  HWTSTAMP_FILTER_PTP_V2_EVENT 138 
#define  HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ 137 
#define  HWTSTAMP_FILTER_PTP_V2_L2_EVENT 136 
#define  HWTSTAMP_FILTER_PTP_V2_L2_SYNC 135 
#define  HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ 134 
#define  HWTSTAMP_FILTER_PTP_V2_L4_EVENT 133 
#define  HWTSTAMP_FILTER_PTP_V2_L4_SYNC 132 
#define  HWTSTAMP_FILTER_PTP_V2_SYNC 131 
#define  HWTSTAMP_FILTER_SOME 130 
#define  HWTSTAMP_TX_OFF 129 
#define  HWTSTAMP_TX_ON 128 
 int /*<<< orphan*/  LIO_IFSTATE_RX_TIMESTAMP_ENABLED ; 
 scalar_t__ FUNC1 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct ifreq *ifr)
{
	struct lio *lio = FUNC0(netdev);
	struct hwtstamp_config conf;

	if (FUNC1(&conf, ifr->ifr_data, sizeof(conf)))
		return -EFAULT;

	if (conf.flags)
		return -EINVAL;

	switch (conf.tx_type) {
	case HWTSTAMP_TX_ON:
	case HWTSTAMP_TX_OFF:
		break;
	default:
		return -ERANGE;
	}

	switch (conf.rx_filter) {
	case HWTSTAMP_FILTER_NONE:
		break;
	case HWTSTAMP_FILTER_ALL:
	case HWTSTAMP_FILTER_SOME:
	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
	case HWTSTAMP_FILTER_PTP_V2_L4_EVENT:
	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
	case HWTSTAMP_FILTER_PTP_V2_EVENT:
	case HWTSTAMP_FILTER_PTP_V2_SYNC:
	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
	case HWTSTAMP_FILTER_NTP_ALL:
		conf.rx_filter = HWTSTAMP_FILTER_ALL;
		break;
	default:
		return -ERANGE;
	}

	if (conf.rx_filter == HWTSTAMP_FILTER_ALL)
		FUNC4(lio, LIO_IFSTATE_RX_TIMESTAMP_ENABLED);

	else
		FUNC3(lio, LIO_IFSTATE_RX_TIMESTAMP_ENABLED);

	return FUNC2(ifr->ifr_data, &conf, sizeof(conf)) ? -EFAULT : 0;
}
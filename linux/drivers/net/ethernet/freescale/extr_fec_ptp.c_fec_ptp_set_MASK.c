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
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
struct fec_enet_private {int hwts_tx_en; int hwts_rx_en; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ERANGE ; 
 int HWTSTAMP_FILTER_ALL ; 
#define  HWTSTAMP_FILTER_NONE 130 
#define  HWTSTAMP_TX_OFF 129 
#define  HWTSTAMP_TX_ON 128 
 scalar_t__ FUNC0 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 struct fec_enet_private* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *ndev, struct ifreq *ifr)
{
	struct fec_enet_private *fep = FUNC2(ndev);

	struct hwtstamp_config config;

	if (FUNC0(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	/* reserved for future extensions */
	if (config.flags)
		return -EINVAL;

	switch (config.tx_type) {
	case HWTSTAMP_TX_OFF:
		fep->hwts_tx_en = 0;
		break;
	case HWTSTAMP_TX_ON:
		fep->hwts_tx_en = 1;
		break;
	default:
		return -ERANGE;
	}

	switch (config.rx_filter) {
	case HWTSTAMP_FILTER_NONE:
		if (fep->hwts_rx_en)
			fep->hwts_rx_en = 0;
		config.rx_filter = HWTSTAMP_FILTER_NONE;
		break;

	default:
		fep->hwts_rx_en = 1;
		config.rx_filter = HWTSTAMP_FILTER_ALL;
		break;
	}

	return FUNC1(ifr->ifr_data, &config, sizeof(config)) ?
	    -EFAULT : 0;
}
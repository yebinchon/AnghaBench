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
struct ptp_qoriq {int phc_index; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct gfar_private {int device_flags; } ;
struct ethtool_ts_info {int phc_index; int so_timestamping; int tx_types; int rx_filters; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FSL_GIANFAR_DEV_HAS_TIMER ; 
 int HWTSTAMP_FILTER_ALL ; 
 int HWTSTAMP_FILTER_NONE ; 
 int HWTSTAMP_TX_OFF ; 
 int HWTSTAMP_TX_ON ; 
 int SOF_TIMESTAMPING_RAW_HARDWARE ; 
 int SOF_TIMESTAMPING_RX_HARDWARE ; 
 int SOF_TIMESTAMPING_RX_SOFTWARE ; 
 int SOF_TIMESTAMPING_SOFTWARE ; 
 int SOF_TIMESTAMPING_TX_HARDWARE ; 
 struct gfar_private* FUNC0 (struct net_device*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 struct ptp_qoriq* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			    struct ethtool_ts_info *info)
{
	struct gfar_private *priv = FUNC0(dev);
	struct platform_device *ptp_dev;
	struct device_node *ptp_node;
	struct ptp_qoriq *ptp = NULL;

	info->phc_index = -1;

	if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_TIMER)) {
		info->so_timestamping = SOF_TIMESTAMPING_RX_SOFTWARE |
					SOF_TIMESTAMPING_SOFTWARE;
		return 0;
	}

	ptp_node = FUNC1(NULL, NULL, "fsl,etsec-ptp");
	if (ptp_node) {
		ptp_dev = FUNC2(ptp_node);
		if (ptp_dev)
			ptp = FUNC3(ptp_dev);
	}

	if (ptp)
		info->phc_index = ptp->phc_index;

	info->so_timestamping = SOF_TIMESTAMPING_TX_HARDWARE |
				SOF_TIMESTAMPING_RX_HARDWARE |
				SOF_TIMESTAMPING_RAW_HARDWARE;
	info->tx_types = (1 << HWTSTAMP_TX_OFF) |
			 (1 << HWTSTAMP_TX_ON);
	info->rx_filters = (1 << HWTSTAMP_FILTER_NONE) |
			   (1 << HWTSTAMP_FILTER_ALL);
	return 0;
}
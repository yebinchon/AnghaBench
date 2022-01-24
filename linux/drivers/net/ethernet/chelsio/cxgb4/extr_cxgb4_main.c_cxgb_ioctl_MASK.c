#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int const tx_type; int rx_filter; } ;
struct port_info {int mdio_addr; int rxtstamp; int ptp_enable; TYPE_2__ tstamp_config; int /*<<< orphan*/  port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  chip; } ;
struct adapter {unsigned int pf; TYPE_1__ params; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int ERANGE ; 
#define  HWTSTAMP_FILTER_ALL 143 
#define  HWTSTAMP_FILTER_NONE 142 
#define  HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ 141 
#define  HWTSTAMP_FILTER_PTP_V1_L4_EVENT 140 
#define  HWTSTAMP_FILTER_PTP_V1_L4_SYNC 139 
#define  HWTSTAMP_FILTER_PTP_V2_EVENT 138 
#define  HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ 137 
#define  HWTSTAMP_FILTER_PTP_V2_L4_EVENT 136 
#define  HWTSTAMP_FILTER_PTP_V2_L4_SYNC 135 
#define  HWTSTAMP_TX_OFF 134 
#define  HWTSTAMP_TX_ON 133 
 int /*<<< orphan*/  PTP_TS_L2_L4 ; 
 int /*<<< orphan*/  PTP_TS_L4 ; 
#define  SIOCGHWTSTAMP 132 
#define  SIOCGMIIPHY 131 
#define  SIOCGMIIREG 130 
#define  SIOCSHWTSTAMP 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct port_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct port_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 struct port_info* FUNC9 (struct net_device*) ; 
 int FUNC10 (struct adapter*,unsigned int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct adapter*,unsigned int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, struct ifreq *req, int cmd)
{
	unsigned int mbox;
	int ret = 0, prtad, devad;
	struct port_info *pi = FUNC9(dev);
	struct adapter *adapter = pi->adapter;
	struct mii_ioctl_data *data = (struct mii_ioctl_data *)&req->ifr_data;

	switch (cmd) {
	case SIOCGMIIPHY:
		if (pi->mdio_addr < 0)
			return -EOPNOTSUPP;
		data->phy_id = pi->mdio_addr;
		break;
	case SIOCGMIIREG:
	case SIOCSMIIREG:
		if (FUNC7(data->phy_id)) {
			prtad = FUNC8(data->phy_id);
			devad = FUNC6(data->phy_id);
		} else if (data->phy_id < 32) {
			prtad = data->phy_id;
			devad = 0;
			data->reg_num &= 0x1f;
		} else
			return -EINVAL;

		mbox = pi->adapter->pf;
		if (cmd == SIOCGMIIREG)
			ret = FUNC10(pi->adapter, mbox, prtad, devad,
					 data->reg_num, &data->val_out);
		else
			ret = FUNC11(pi->adapter, mbox, prtad, devad,
					 data->reg_num, data->val_in);
		break;
	case SIOCGHWTSTAMP:
		return FUNC1(req->ifr_data, &pi->tstamp_config,
				    sizeof(pi->tstamp_config)) ?
			-EFAULT : 0;
	case SIOCSHWTSTAMP:
		if (FUNC0(&pi->tstamp_config, req->ifr_data,
				   sizeof(pi->tstamp_config)))
			return -EFAULT;

		if (!FUNC5(adapter->params.chip)) {
			switch (pi->tstamp_config.tx_type) {
			case HWTSTAMP_TX_OFF:
			case HWTSTAMP_TX_ON:
				break;
			default:
				return -ERANGE;
			}

			switch (pi->tstamp_config.rx_filter) {
			case HWTSTAMP_FILTER_NONE:
				pi->rxtstamp = false;
				break;
			case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
			case HWTSTAMP_FILTER_PTP_V2_L4_EVENT:
				FUNC4(pi, pi->port_id,
							 PTP_TS_L4);
				break;
			case HWTSTAMP_FILTER_PTP_V2_EVENT:
				FUNC4(pi, pi->port_id,
							 PTP_TS_L2_L4);
				break;
			case HWTSTAMP_FILTER_ALL:
			case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
			case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
			case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
			case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
				pi->rxtstamp = true;
				break;
			default:
				pi->tstamp_config.rx_filter =
					HWTSTAMP_FILTER_NONE;
				return -ERANGE;
			}

			if ((pi->tstamp_config.tx_type == HWTSTAMP_TX_OFF) &&
			    (pi->tstamp_config.rx_filter ==
				HWTSTAMP_FILTER_NONE)) {
				if (FUNC3(adapter, pi->port_id) >= 0)
					pi->ptp_enable = false;
			}

			if (pi->tstamp_config.rx_filter !=
				HWTSTAMP_FILTER_NONE) {
				if (FUNC2(adapter,
								 pi) >= 0)
					pi->ptp_enable = true;
			}
		} else {
			/* For T4 Adapters */
			switch (pi->tstamp_config.rx_filter) {
			case HWTSTAMP_FILTER_NONE:
			pi->rxtstamp = false;
			break;
			case HWTSTAMP_FILTER_ALL:
			pi->rxtstamp = true;
			break;
			default:
			pi->tstamp_config.rx_filter =
			HWTSTAMP_FILTER_NONE;
			return -ERANGE;
			}
		}
		return FUNC1(req->ifr_data, &pi->tstamp_config,
				    sizeof(pi->tstamp_config)) ?
			-EFAULT : 0;
	default:
		return -EOPNOTSUPP;
	}
	return ret;
}
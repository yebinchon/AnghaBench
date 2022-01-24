#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int rx_cqe_compress_def; } ;
struct TYPE_3__ {TYPE_2__ params; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  tstamp; TYPE_1__ channels; int /*<<< orphan*/  mdev; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int EFAULT ; 
 int EOPNOTSUPP ; 
 int ERANGE ; 
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
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_PFLAG_RX_CQE_COMPRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int /*<<< orphan*/  device_frequency_khz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct hwtstamp_config*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

int FUNC12(struct mlx5e_priv *priv, struct ifreq *ifr)
{
	struct hwtstamp_config config;
	int err;

	if (!FUNC1(priv->mdev, device_frequency_khz) ||
	    (FUNC5(priv->mdev) == -1))
		return -EOPNOTSUPP;

	if (FUNC2(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	/* TX HW timestamp */
	switch (config.tx_type) {
	case HWTSTAMP_TX_OFF:
	case HWTSTAMP_TX_ON:
		break;
	default:
		return -ERANGE;
	}

	FUNC7(&priv->state_lock);
	/* RX HW timestamp */
	switch (config.rx_filter) {
	case HWTSTAMP_FILTER_NONE:
		/* Reset CQE compression to Admin default */
		FUNC6(priv, priv->channels.params.rx_cqe_compress_def);
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
		/* Disable CQE compression */
		if (FUNC0(&priv->channels.params, MLX5E_PFLAG_RX_CQE_COMPRESS))
			FUNC11(priv->netdev, "Disabling RX cqe compression\n");
		err = FUNC6(priv, false);
		if (err) {
			FUNC9(priv->netdev, "Failed disabling cqe compression err=%d\n", err);
			FUNC8(&priv->state_lock);
			return err;
		}
		config.rx_filter = HWTSTAMP_FILTER_ALL;
		break;
	default:
		FUNC8(&priv->state_lock);
		return -ERANGE;
	}

	FUNC4(&priv->tstamp, &config, sizeof(config));
	FUNC8(&priv->state_lock);

	/* might need to fix some features */
	FUNC10(priv->netdev);

	return FUNC3(ifr->ifr_data, &config,
			    sizeof(config)) ? -EFAULT : 0;
}
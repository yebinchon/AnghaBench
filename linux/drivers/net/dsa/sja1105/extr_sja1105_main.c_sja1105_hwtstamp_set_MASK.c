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
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct sja1105_private {TYPE_2__ tagger_data; TYPE_1__* ports; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; } ;
struct dsa_switch {int /*<<< orphan*/  dev; struct sja1105_private* priv; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_3__ {int hwts_tx_en; } ;

/* Variables and functions */
 int EFAULT ; 
 int ERANGE ; 
#define  HWTSTAMP_FILTER_NONE 130 
#define  HWTSTAMP_TX_OFF 129 
#define  HWTSTAMP_TX_ON 128 
 int /*<<< orphan*/  SJA1105_HWTS_RX_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sja1105_private*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dsa_switch *ds, int port,
				struct ifreq *ifr)
{
	struct sja1105_private *priv = ds->priv;
	struct hwtstamp_config config;
	bool rx_on;
	int rc;

	if (FUNC1(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	switch (config.tx_type) {
	case HWTSTAMP_TX_OFF:
		priv->ports[port].hwts_tx_en = false;
		break;
	case HWTSTAMP_TX_ON:
		priv->ports[port].hwts_tx_en = true;
		break;
	default:
		return -ERANGE;
	}

	switch (config.rx_filter) {
	case HWTSTAMP_FILTER_NONE:
		rx_on = false;
		break;
	default:
		rx_on = true;
		break;
	}

	if (rx_on != FUNC6(SJA1105_HWTS_RX_EN, &priv->tagger_data.state)) {
		FUNC0(SJA1105_HWTS_RX_EN, &priv->tagger_data.state);

		rc = FUNC5(priv, rx_on);
		if (rc < 0) {
			FUNC3(ds->dev,
				"Failed to change RX timestamping: %d\n", rc);
			return rc;
		}
		if (rx_on)
			FUNC4(SJA1105_HWTS_RX_EN, &priv->tagger_data.state);
	}

	if (FUNC2(ifr->ifr_data, &config, sizeof(config)))
		return -EFAULT;
	return 0;
}
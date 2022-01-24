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
typedef  int /*<<< orphan*/  u8 ;
struct sja1105_status {int ids; int crcchkl; int crcchkg; scalar_t__ configs; } ;
struct sja1105_static_config {int /*<<< orphan*/  device_id; } ;
struct sja1105_regs {int /*<<< orphan*/  config; } ;
struct sja1105_private {TYPE_2__* info; TYPE_1__* spidev; struct sja1105_static_config static_config; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_id; struct sja1105_regs* regs; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RETRIES ; 
 scalar_t__ SJA1105_NUM_PORTS ; 
 int /*<<< orphan*/  SPI_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sja1105_private*) ; 
 int FUNC6 (struct sja1105_private*,unsigned long,int) ; 
 int FUNC7 (struct sja1105_private*) ; 
 int FUNC8 (struct sja1105_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct sja1105_static_config*) ; 
 int FUNC10 (struct sja1105_private*,struct sja1105_status*) ; 
 int FUNC11 (struct sja1105_private*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

int FUNC13(struct sja1105_private *priv)
{
	unsigned long port_bitmap = FUNC0(SJA1105_NUM_PORTS - 1, 0);
	struct sja1105_static_config *config = &priv->static_config;
	const struct sja1105_regs *regs = priv->info->regs;
	struct device *dev = &priv->spidev->dev;
	struct sja1105_status status;
	int rc, retries = RETRIES;
	u8 *config_buf;
	int buf_len;

	buf_len = FUNC9(config);
	config_buf = FUNC3(buf_len, sizeof(char), GFP_KERNEL);
	if (!config_buf)
		return -ENOMEM;

	rc = FUNC11(priv, config_buf, buf_len);
	if (rc < 0) {
		FUNC1(dev, "Invalid config, cannot upload\n");
		rc = -EINVAL;
		goto out;
	}
	/* Prevent PHY jabbering during switch reset by inhibiting
	 * Tx on all ports and waiting for current packet to drain.
	 * Otherwise, the PHY will see an unterminated Ethernet packet.
	 */
	rc = FUNC6(priv, port_bitmap, true);
	if (rc < 0) {
		FUNC1(dev, "Failed to inhibit Tx on ports\n");
		rc = -ENXIO;
		goto out;
	}
	/* Wait for an eventual egress packet to finish transmission
	 * (reach IFG). It is guaranteed that a second one will not
	 * follow, and that switch cold reset is thus safe
	 */
	FUNC12(500, 1000);
	do {
		/* Put the SJA1105 in programming mode */
		rc = FUNC5(priv);
		if (rc < 0) {
			FUNC1(dev, "Failed to reset switch, retrying...\n");
			continue;
		}
		/* Wait for the switch to come out of reset */
		FUNC12(1000, 5000);
		/* Upload the static config to the device */
		rc = FUNC8(priv, SPI_WRITE,
						      regs->config,
						      config_buf, buf_len);
		if (rc < 0) {
			FUNC1(dev, "Failed to upload config, retrying...\n");
			continue;
		}
		/* Check that SJA1105 responded well to the config upload */
		rc = FUNC10(priv, &status);
		if (rc < 0)
			continue;

		if (status.ids == 1) {
			FUNC1(dev, "Mismatch between hardware and static config "
				"device id. Wrote 0x%llx, wants 0x%llx\n",
				config->device_id, priv->info->device_id);
			continue;
		}
		if (status.crcchkl == 1) {
			FUNC1(dev, "Switch reported invalid local CRC on "
				"the uploaded config, retrying...\n");
			continue;
		}
		if (status.crcchkg == 1) {
			FUNC1(dev, "Switch reported invalid global CRC on "
				"the uploaded config, retrying...\n");
			continue;
		}
		if (status.configs == 0) {
			FUNC1(dev, "Switch reported that configuration is "
				"invalid, retrying...\n");
			continue;
		}
		/* Success! */
		break;
	} while (--retries);

	if (!retries) {
		rc = -EIO;
		FUNC1(dev, "Failed to upload config to device, giving up\n");
		goto out;
	} else if (retries != RETRIES) {
		FUNC2(dev, "Succeeded after %d tried\n", RETRIES - retries);
	}

	rc = FUNC7(priv);
	if (rc < 0)
		FUNC1(dev, "Failed to reset PTP clock: %d\n", rc);

	FUNC2(dev, "Reset switch and programmed static config\n");

out:
	FUNC4(config_buf);
	return rc;
}
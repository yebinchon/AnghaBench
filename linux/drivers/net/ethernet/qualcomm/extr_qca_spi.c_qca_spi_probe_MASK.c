#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {scalar_t__ max_speed_hz; TYPE_1__ dev; int /*<<< orphan*/  mode; } ;
struct qcaspi {struct net_device* net_dev; int /*<<< orphan*/  legacy_mode; struct spi_device* spi_dev; } ;
struct net_device {scalar_t__ name; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ QCASPI_BURST_LEN_MAX ; 
 scalar_t__ QCASPI_BURST_LEN_MIN ; 
 scalar_t__ QCASPI_CLK_SPEED ; 
 scalar_t__ QCASPI_CLK_SPEED_MAX ; 
 scalar_t__ QCASPI_CLK_SPEED_MIN ; 
 int /*<<< orphan*/  QCASPI_DRV_VERSION ; 
 scalar_t__ QCASPI_GOOD_SIGNATURE ; 
 scalar_t__ QCASPI_PLUGGABLE_MAX ; 
 scalar_t__ QCASPI_PLUGGABLE_MIN ; 
 scalar_t__ QCASPI_WRITE_VERIFY_MAX ; 
 scalar_t__ QCASPI_WRITE_VERIFY_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  SPI_REG_SIGNATURE ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct qcaspi* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ qcaspi_burst_len ; 
 scalar_t__ qcaspi_clkspeed ; 
 int /*<<< orphan*/  FUNC13 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 scalar_t__ qcaspi_pluggable ; 
 int /*<<< orphan*/  FUNC15 (struct qcaspi*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_device*,struct net_device*) ; 
 scalar_t__ FUNC18 (struct spi_device*) ; 
 scalar_t__ wr_verify ; 

__attribute__((used)) static int
FUNC19(struct spi_device *spi)
{
	struct qcaspi *qca = NULL;
	struct net_device *qcaspi_devs = NULL;
	u8 legacy_mode = 0;
	u16 signature;
	const char *mac;

	if (!spi->dev.of_node) {
		FUNC3(&spi->dev, "Missing device tree\n");
		return -EINVAL;
	}

	legacy_mode = FUNC12(spi->dev.of_node,
					    "qca,legacy-mode");

	if (qcaspi_clkspeed == 0) {
		if (spi->max_speed_hz)
			qcaspi_clkspeed = spi->max_speed_hz;
		else
			qcaspi_clkspeed = QCASPI_CLK_SPEED;
	}

	if ((qcaspi_clkspeed < QCASPI_CLK_SPEED_MIN) ||
	    (qcaspi_clkspeed > QCASPI_CLK_SPEED_MAX)) {
		FUNC3(&spi->dev, "Invalid clkspeed: %d\n",
			qcaspi_clkspeed);
		return -EINVAL;
	}

	if ((qcaspi_burst_len < QCASPI_BURST_LEN_MIN) ||
	    (qcaspi_burst_len > QCASPI_BURST_LEN_MAX)) {
		FUNC3(&spi->dev, "Invalid burst len: %d\n",
			qcaspi_burst_len);
		return -EINVAL;
	}

	if ((qcaspi_pluggable < QCASPI_PLUGGABLE_MIN) ||
	    (qcaspi_pluggable > QCASPI_PLUGGABLE_MAX)) {
		FUNC3(&spi->dev, "Invalid pluggable: %d\n",
			qcaspi_pluggable);
		return -EINVAL;
	}

	if (wr_verify < QCASPI_WRITE_VERIFY_MIN ||
	    wr_verify > QCASPI_WRITE_VERIFY_MAX) {
		FUNC3(&spi->dev, "Invalid write verify: %d\n",
			wr_verify);
		return -EINVAL;
	}

	FUNC4(&spi->dev, "ver=%s, clkspeed=%d, burst_len=%d, pluggable=%d\n",
		 QCASPI_DRV_VERSION,
		 qcaspi_clkspeed,
		 qcaspi_burst_len,
		 qcaspi_pluggable);

	spi->mode = SPI_MODE_3;
	spi->max_speed_hz = qcaspi_clkspeed;
	if (FUNC18(spi) < 0) {
		FUNC3(&spi->dev, "Unable to setup SPI device\n");
		return -EFAULT;
	}

	qcaspi_devs = FUNC2(sizeof(struct qcaspi));
	if (!qcaspi_devs)
		return -ENOMEM;

	FUNC14(qcaspi_devs);
	FUNC1(qcaspi_devs, &spi->dev);

	qca = FUNC9(qcaspi_devs);
	if (!qca) {
		FUNC7(qcaspi_devs);
		FUNC3(&spi->dev, "Fail to retrieve private structure\n");
		return -ENOMEM;
	}
	qca->net_dev = qcaspi_devs;
	qca->spi_dev = spi;
	qca->legacy_mode = legacy_mode;

	FUNC17(spi, qcaspi_devs);

	mac = FUNC11(spi->dev.of_node);

	if (!FUNC0(mac))
		FUNC6(qca->net_dev->dev_addr, mac);

	if (!FUNC8(qca->net_dev->dev_addr)) {
		FUNC5(qca->net_dev);
		FUNC4(&spi->dev, "Using random MAC address: %pM\n",
			 qca->net_dev->dev_addr);
	}

	FUNC10(qca->net_dev);

	if (!qcaspi_pluggable) {
		FUNC15(qca, SPI_REG_SIGNATURE, &signature);
		FUNC15(qca, SPI_REG_SIGNATURE, &signature);

		if (signature != QCASPI_GOOD_SIGNATURE) {
			FUNC3(&spi->dev, "Invalid signature (0x%04X)\n",
				signature);
			FUNC7(qcaspi_devs);
			return -EFAULT;
		}
	}

	if (FUNC16(qcaspi_devs)) {
		FUNC3(&spi->dev, "Unable to register net device %s\n",
			qcaspi_devs->name);
		FUNC7(qcaspi_devs);
		return -EFAULT;
	}

	FUNC13(qca);

	return 0;
}
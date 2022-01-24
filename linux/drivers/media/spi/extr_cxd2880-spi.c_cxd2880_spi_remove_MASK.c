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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__ dmx; } ;
struct cxd2880_dvb_spi {scalar_t__ vcc_supply; int /*<<< orphan*/  adapter; int /*<<< orphan*/  dvb_fe; TYPE_2__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  dmx_fe; } ;

/* Variables and functions */
 int EINVAL ; 
 struct cxd2880_dvb_spi* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cxd2880_dvb_spi*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct spi_device *spi)
{
	struct cxd2880_dvb_spi *dvb_spi;

	if (!spi) {
		FUNC7("invalid arg\n");
		return -EINVAL;
	}

	dvb_spi = FUNC0(&spi->dev);

	if (!dvb_spi) {
		FUNC7("failed\n");
		return -EINVAL;
	}
	dvb_spi->demux.dmx.remove_frontend(&dvb_spi->demux.dmx,
					   &dvb_spi->dmx_fe);
	FUNC2(&dvb_spi->dmxdev);
	FUNC1(&dvb_spi->demux);
	FUNC5(&dvb_spi->dvb_fe);
	FUNC3(&dvb_spi->dvb_fe);
	FUNC4(&dvb_spi->adapter);

	if (dvb_spi->vcc_supply)
		FUNC9(dvb_spi->vcc_supply);

	FUNC6(dvb_spi);
	FUNC8("cxd2880_spi remove ok.\n");

	return 0;
}
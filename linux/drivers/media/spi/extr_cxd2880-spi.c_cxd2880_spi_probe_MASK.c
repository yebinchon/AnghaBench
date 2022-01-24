#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int (* add_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* connect_frontend ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  capabilities; } ;
struct TYPE_14__ {TYPE_1__ dmx; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; void* feednum; void* filternum; struct cxd2880_dvb_spi* priv; } ;
struct TYPE_13__ {scalar_t__ capabilities; TYPE_1__* demux; void* filternum; } ;
struct TYPE_12__ {int /*<<< orphan*/  source; } ;
struct cxd2880_dvb_spi {int /*<<< orphan*/  adapter; int /*<<< orphan*/  dvb_fe; TYPE_9__ demux; TYPE_7__ dmxdev; TYPE_2__ dmx_fe; int /*<<< orphan*/  spi_mutex; struct spi_device* spi; int /*<<< orphan*/ * vcc_supply; } ;
struct cxd2880_config {int /*<<< orphan*/ * spi_mutex; struct spi_device* spi; } ;

/* Variables and functions */
 void* CXD2880_MAX_FILTER_SIZE ; 
 int /*<<< orphan*/  DMX_FRONTEND_0 ; 
 int /*<<< orphan*/  DMX_TS_FILTERING ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  cxd2880_attach ; 
 int /*<<< orphan*/  cxd2880_start_feed ; 
 int /*<<< orphan*/  cxd2880_stop_feed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cxd2880_dvb_spi*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cxd2880_config*) ; 
 int FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int FUNC7 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct cxd2880_dvb_spi*) ; 
 struct cxd2880_dvb_spi* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC21 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC23(struct spi_device *spi)
{
	int ret;
	struct cxd2880_dvb_spi *dvb_spi = NULL;
	struct cxd2880_config config;

	if (!spi) {
		FUNC17("invalid arg.\n");
		return -EINVAL;
	}

	dvb_spi = FUNC15(sizeof(struct cxd2880_dvb_spi), GFP_KERNEL);
	if (!dvb_spi)
		return -ENOMEM;

	dvb_spi->vcc_supply = FUNC3(&spi->dev, "vcc");
	if (FUNC0(dvb_spi->vcc_supply)) {
		if (FUNC1(dvb_spi->vcc_supply) == -EPROBE_DEFER) {
			ret = -EPROBE_DEFER;
			goto fail_adapter;
		}
		dvb_spi->vcc_supply = NULL;
	} else {
		ret = FUNC19(dvb_spi->vcc_supply);
		if (ret)
			goto fail_adapter;
	}

	dvb_spi->spi = spi;
	FUNC16(&dvb_spi->spi_mutex);
	FUNC2(&spi->dev, dvb_spi);
	config.spi = spi;
	config.spi_mutex = &dvb_spi->spi_mutex;

	ret = FUNC10(&dvb_spi->adapter,
				   "CXD2880",
				   THIS_MODULE,
				   &spi->dev,
				   adapter_nr);
	if (ret < 0) {
		FUNC17("dvb_register_adapter() failed\n");
		goto fail_adapter;
	}

	if (!FUNC4(cxd2880_attach, &dvb_spi->dvb_fe, &config)) {
		FUNC17("cxd2880_attach failed\n");
		ret = -ENODEV;
		goto fail_attach;
	}

	ret = FUNC11(&dvb_spi->adapter,
				    &dvb_spi->dvb_fe);
	if (ret < 0) {
		FUNC17("dvb_register_frontend() failed\n");
		goto fail_frontend;
	}

	dvb_spi->demux.dmx.capabilities = DMX_TS_FILTERING;
	dvb_spi->demux.priv = dvb_spi;
	dvb_spi->demux.filternum = CXD2880_MAX_FILTER_SIZE;
	dvb_spi->demux.feednum = CXD2880_MAX_FILTER_SIZE;
	dvb_spi->demux.start_feed = cxd2880_start_feed;
	dvb_spi->demux.stop_feed = cxd2880_stop_feed;

	ret = FUNC5(&dvb_spi->demux);
	if (ret < 0) {
		FUNC17("dvb_dmx_init() failed\n");
		goto fail_dmx;
	}

	dvb_spi->dmxdev.filternum = CXD2880_MAX_FILTER_SIZE;
	dvb_spi->dmxdev.demux = &dvb_spi->demux.dmx;
	dvb_spi->dmxdev.capabilities = 0;
	ret = FUNC7(&dvb_spi->dmxdev,
			      &dvb_spi->adapter);
	if (ret < 0) {
		FUNC17("dvb_dmxdev_init() failed\n");
		goto fail_dmxdev;
	}

	dvb_spi->dmx_fe.source = DMX_FRONTEND_0;
	ret = dvb_spi->demux.dmx.add_frontend(&dvb_spi->demux.dmx,
					      &dvb_spi->dmx_fe);
	if (ret < 0) {
		FUNC17("add_frontend() failed\n");
		goto fail_dmx_fe;
	}

	ret = dvb_spi->demux.dmx.connect_frontend(&dvb_spi->demux.dmx,
						  &dvb_spi->dmx_fe);
	if (ret < 0) {
		FUNC17("dvb_register_frontend() failed\n");
		goto fail_fe_conn;
	}

	FUNC18("Sony CXD2880 has successfully attached.\n");

	return 0;

fail_fe_conn:
	dvb_spi->demux.dmx.remove_frontend(&dvb_spi->demux.dmx,
					   &dvb_spi->dmx_fe);
fail_dmx_fe:
	FUNC8(&dvb_spi->dmxdev);
fail_dmxdev:
	FUNC6(&dvb_spi->demux);
fail_dmx:
	FUNC13(&dvb_spi->dvb_fe);
fail_frontend:
	FUNC9(&dvb_spi->dvb_fe);
fail_attach:
	FUNC12(&dvb_spi->adapter);
fail_adapter:
	FUNC14(dvb_spi);
	return ret;
}
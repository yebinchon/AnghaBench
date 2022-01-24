#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_17__ {TYPE_2__* algo_data; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {struct dmx_demux* demux; int /*<<< orphan*/  filternum; } ;
struct TYPE_16__ {int /*<<< orphan*/  source; } ;
struct dmx_demux {int capabilities; int (* add_frontend ) (struct dmx_demux*,TYPE_3__*) ;int (* connect_frontend ) (struct dmx_demux*,TYPE_3__*) ;int /*<<< orphan*/  (* remove_frontend ) (struct dmx_demux*,TYPE_3__*) ;int /*<<< orphan*/  (* disconnect_frontend ) (struct dmx_demux*) ;} ;
struct dvb_demux {int filternum; int feednum; struct dmx_demux dmx; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; } ;
struct dvb_adapter {int /*<<< orphan*/  proposed_mac; } ;
struct TYPE_15__ {int udelay; int timeout; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  (* setscl ) (struct pluto*,int) ;int /*<<< orphan*/  (* setsda ) (struct pluto*,int) ;struct pluto* data; } ;
struct pluto {int /*<<< orphan*/  io_mem; TYPE_8__ i2c_adap; TYPE_11__ dmxdev; TYPE_3__ hw_frontend; TYPE_3__ mem_frontend; int /*<<< orphan*/  dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; TYPE_2__ i2c_bit; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMX_FRONTEND_0 ; 
 int DMX_MEMORY_BASED_FILTERING ; 
 int /*<<< orphan*/  DMX_MEMORY_FE ; 
 int DMX_SECTION_FILTERING ; 
 int DMX_TS_FILTERING ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  NHWFILTERS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int FUNC1 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_demux*) ; 
 int FUNC3 (TYPE_11__*,struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_adapter*,int /*<<< orphan*/ *,struct dmx_demux*) ; 
 int FUNC6 (struct dvb_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pluto*) ; 
 int FUNC9 (struct pluto*) ; 
 int FUNC10 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*,struct pluto*) ; 
 int /*<<< orphan*/  FUNC13 (struct pluto*) ; 
 struct pluto* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,struct pluto*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  pluto_getscl ; 
 int /*<<< orphan*/  pluto_getsda ; 
 int /*<<< orphan*/  FUNC25 (struct pluto*) ; 
 int FUNC26 (struct pluto*) ; 
 int /*<<< orphan*/  pluto_irq ; 
 int /*<<< orphan*/  FUNC27 (struct pluto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC29 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC30 (struct pluto*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct pluto*,int) ; 
 int /*<<< orphan*/  pluto_start_feed ; 
 int /*<<< orphan*/  pluto_stop_feed ; 
 int FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pluto*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC34 (struct dmx_demux*,TYPE_3__*) ; 
 int FUNC35 (struct dmx_demux*,TYPE_3__*) ; 
 int FUNC36 (struct dmx_demux*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC37 (struct dmx_demux*) ; 
 int /*<<< orphan*/  FUNC38 (struct dmx_demux*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC39 (struct dmx_demux*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC40(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct pluto *pluto;
	struct dvb_adapter *dvb_adapter;
	struct dvb_demux *dvbdemux;
	struct dmx_demux *dmx;
	int ret = -ENOMEM;

	pluto = FUNC14(sizeof(struct pluto), GFP_KERNEL);
	if (!pluto)
		goto out;

	pluto->pdev = pdev;

	ret = FUNC16(pdev);
	if (ret < 0)
		goto err_kfree;

	/* enable interrupts */
	FUNC24(pdev, 0x6c, 0x8000);

	ret = FUNC21(pdev, FUNC0(32));
	if (ret < 0)
		goto err_pci_disable_device;

	FUNC23(pdev);

	ret = FUNC20(pdev, DRIVER_NAME);
	if (ret < 0)
		goto err_pci_disable_device;

	pluto->io_mem = FUNC17(pdev, 0, 0x40);
	if (!pluto->io_mem) {
		ret = -EIO;
		goto err_pci_release_regions;
	}

	FUNC22(pdev, pluto);

	ret = FUNC32(pdev->irq, pluto_irq, IRQF_SHARED, DRIVER_NAME, pluto);
	if (ret < 0)
		goto err_pci_iounmap;

	ret = FUNC26(pluto);
	if (ret < 0)
		goto err_free_irq;

	/* i2c */
	FUNC12(&pluto->i2c_adap, pluto);
	FUNC33(pluto->i2c_adap.name, DRIVER_NAME, sizeof(pluto->i2c_adap.name));
	pluto->i2c_adap.owner = THIS_MODULE;
	pluto->i2c_adap.dev.parent = &pdev->dev;
	pluto->i2c_adap.algo_data = &pluto->i2c_bit;
	pluto->i2c_bit.data = pluto;
	pluto->i2c_bit.setsda = pluto_setsda;
	pluto->i2c_bit.setscl = pluto_setscl;
	pluto->i2c_bit.getsda = pluto_getsda;
	pluto->i2c_bit.getscl = pluto_getscl;
	pluto->i2c_bit.udelay = 10;
	pluto->i2c_bit.timeout = 10;

	/* Raise SCL and SDA */
	FUNC31(pluto, 1);
	FUNC30(pluto, 1);

	ret = FUNC10(&pluto->i2c_adap);
	if (ret < 0)
		goto err_pluto_hw_exit;

	/* dvb */
	ret = FUNC6(&pluto->dvb_adapter, DRIVER_NAME,
				   THIS_MODULE, &pdev->dev, adapter_nr);
	if (ret < 0)
		goto err_i2c_del_adapter;

	dvb_adapter = &pluto->dvb_adapter;

	FUNC28(pluto);
	FUNC29(pluto);
	FUNC27(pluto, dvb_adapter->proposed_mac);

	dvbdemux = &pluto->demux;
	dvbdemux->filternum = 256;
	dvbdemux->feednum = 256;
	dvbdemux->start_feed = pluto_start_feed;
	dvbdemux->stop_feed = pluto_stop_feed;
	dvbdemux->dmx.capabilities = (DMX_TS_FILTERING |
			DMX_SECTION_FILTERING | DMX_MEMORY_BASED_FILTERING);
	ret = FUNC1(dvbdemux);
	if (ret < 0)
		goto err_dvb_unregister_adapter;

	dmx = &dvbdemux->dmx;

	pluto->hw_frontend.source = DMX_FRONTEND_0;
	pluto->mem_frontend.source = DMX_MEMORY_FE;
	pluto->dmxdev.filternum = NHWFILTERS;
	pluto->dmxdev.demux = dmx;

	ret = FUNC3(&pluto->dmxdev, dvb_adapter);
	if (ret < 0)
		goto err_dvb_dmx_release;

	ret = dmx->add_frontend(dmx, &pluto->hw_frontend);
	if (ret < 0)
		goto err_dvb_dmxdev_release;

	ret = dmx->add_frontend(dmx, &pluto->mem_frontend);
	if (ret < 0)
		goto err_remove_hw_frontend;

	ret = dmx->connect_frontend(dmx, &pluto->hw_frontend);
	if (ret < 0)
		goto err_remove_mem_frontend;

	ret = FUNC9(pluto);
	if (ret < 0)
		goto err_disconnect_frontend;

	FUNC5(dvb_adapter, &pluto->dvbnet, dmx);
out:
	return ret;

err_disconnect_frontend:
	dmx->disconnect_frontend(dmx);
err_remove_mem_frontend:
	dmx->remove_frontend(dmx, &pluto->mem_frontend);
err_remove_hw_frontend:
	dmx->remove_frontend(dmx, &pluto->hw_frontend);
err_dvb_dmxdev_release:
	FUNC4(&pluto->dmxdev);
err_dvb_dmx_release:
	FUNC2(dvbdemux);
err_dvb_unregister_adapter:
	FUNC7(dvb_adapter);
err_i2c_del_adapter:
	FUNC11(&pluto->i2c_adap);
err_pluto_hw_exit:
	FUNC25(pluto);
err_free_irq:
	FUNC8(pdev->irq, pluto);
err_pci_iounmap:
	FUNC18(pdev, pluto->io_mem);
err_pci_release_regions:
	FUNC19(pdev);
err_pci_disable_device:
	FUNC15(pdev);
err_kfree:
	FUNC13(pluto);
	goto out;
}
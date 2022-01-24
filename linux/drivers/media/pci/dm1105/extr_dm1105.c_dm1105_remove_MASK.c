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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct dmx_demux {int /*<<< orphan*/  (* remove_frontend ) (struct dmx_demux*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* disconnect_frontend ) (struct dmx_demux*) ;int /*<<< orphan*/  (* close ) (struct dmx_demux*) ;} ;
struct dvb_demux {struct dmx_demux dmx; } ;
struct dvb_adapter {int dummy; } ;
struct dm1105_dev {int /*<<< orphan*/  io_mem; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  mem_frontend; scalar_t__ fe; int /*<<< orphan*/  dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  dm1105_devcount ; 
 int /*<<< orphan*/  FUNC0 (struct dm1105_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm1105_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dm1105_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dm1105_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 struct dm1105_dev* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct dmx_demux*) ; 
 int /*<<< orphan*/  FUNC15 (struct dmx_demux*) ; 
 int /*<<< orphan*/  FUNC16 (struct dmx_demux*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dmx_demux*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct pci_dev *pdev)
{
	struct dm1105_dev *dev = FUNC11(pdev);
	struct dvb_adapter *dvb_adapter = &dev->dvb_adapter;
	struct dvb_demux *dvbdemux = &dev->demux;
	struct dmx_demux *dmx = &dvbdemux->dmx;

	FUNC1(dev);
	dmx->close(dmx);
	FUNC4(&dev->dvbnet);
	if (dev->fe)
		FUNC6(dev->fe);

	dmx->disconnect_frontend(dmx);
	dmx->remove_frontend(dmx, &dev->mem_frontend);
	dmx->remove_frontend(dmx, &dev->hw_frontend);
	FUNC3(&dev->dmxdev);
	FUNC2(dvbdemux);
	FUNC5(dvb_adapter);
	FUNC8(&dev->i2c_adap);

	FUNC0(dev);
	FUNC7(pdev->irq, dev);
	FUNC12(pdev, dev->io_mem);
	FUNC13(pdev);
	FUNC10(pdev);
	dm1105_devcount--;
	FUNC9(dev);
}
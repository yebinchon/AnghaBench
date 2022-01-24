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
struct dmx_demux {int /*<<< orphan*/  (* remove_frontend ) (struct dmx_demux*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* disconnect_frontend ) (struct dmx_demux*) ;int /*<<< orphan*/  (* close ) (struct dmx_demux*) ;} ;
struct dvb_demux {struct dmx_demux dmx; } ;
struct dvb_adapter {int dummy; } ;
struct pluto {int /*<<< orphan*/  io_mem; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  hw_frontend; int /*<<< orphan*/  mem_frontend; scalar_t__ fe; int /*<<< orphan*/  dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_demux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pluto*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct pluto* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC13 (struct dmx_demux*) ; 
 int /*<<< orphan*/  FUNC14 (struct dmx_demux*) ; 
 int /*<<< orphan*/  FUNC15 (struct dmx_demux*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct dmx_demux*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct pci_dev *pdev)
{
	struct pluto *pluto = FUNC9(pdev);
	struct dvb_adapter *dvb_adapter = &pluto->dvb_adapter;
	struct dvb_demux *dvbdemux = &pluto->demux;
	struct dmx_demux *dmx = &dvbdemux->dmx;

	dmx->close(dmx);
	FUNC2(&pluto->dvbnet);
	if (pluto->fe)
		FUNC4(pluto->fe);

	dmx->disconnect_frontend(dmx);
	dmx->remove_frontend(dmx, &pluto->mem_frontend);
	dmx->remove_frontend(dmx, &pluto->hw_frontend);
	FUNC1(&pluto->dmxdev);
	FUNC0(dvbdemux);
	FUNC3(dvb_adapter);
	FUNC6(&pluto->i2c_adap);
	FUNC12(pluto);
	FUNC5(pdev->irq, pluto);
	FUNC10(pdev, pluto->io_mem);
	FUNC11(pdev);
	FUNC8(pdev);
	FUNC7(pluto);
}
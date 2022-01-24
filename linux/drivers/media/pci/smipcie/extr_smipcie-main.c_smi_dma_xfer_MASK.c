#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct smi_port {int _int_status; int _dmaInterruptCH0; int idx; int _dmaInterruptCH1; int /*<<< orphan*/  DMA_MANAGEMENT; int /*<<< orphan*/ * cpu_addr; int /*<<< orphan*/  demux; int /*<<< orphan*/  DMA_CHAN1_TRANS_STATE; int /*<<< orphan*/  DMA_CHAN0_TRANS_STATE; struct smi_dev* dev; } ;
struct smi_dev {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SMI_TS_DMA_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_port*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct smi_port *port = (struct smi_port *) data;
	struct smi_dev *dev = port->dev;
	u32 intr_status, finishedData, dmaManagement;
	u8 dmaChan0State, dmaChan1State;

	intr_status = port->_int_status;
	dmaManagement = FUNC3(port->DMA_MANAGEMENT);
	dmaChan0State = (u8)((dmaManagement & 0x00000030) >> 4);
	dmaChan1State = (u8)((dmaManagement & 0x00300000) >> 20);

	/* CH-0 DMA interrupt.*/
	if ((intr_status & port->_dmaInterruptCH0) && (dmaChan0State == 0x01)) {
		FUNC0(&dev->pci_dev->dev,
			"Port[%d]-DMA CH0 engine complete successful !\n",
			port->idx);
		finishedData = FUNC3(port->DMA_CHAN0_TRANS_STATE);
		finishedData &= 0x003FFFFF;
		/* value of DMA_PORT0_CHAN0_TRANS_STATE register [21:0]
		 * indicate dma total transfer length and
		 * zero of [21:0] indicate dma total transfer length
		 * equal to 0x400000 (4MB)*/
		if (finishedData == 0)
			finishedData = 0x00400000;
		if (finishedData != SMI_TS_DMA_BUF_SIZE) {
			FUNC0(&dev->pci_dev->dev,
				"DMA CH0 engine complete length mismatched, finish data=%d !\n",
				finishedData);
		}
		FUNC1(&port->demux,
			port->cpu_addr[0], (finishedData / 188));
		/*dvb_dmx_swfilter(&port->demux,
			port->cpu_addr[0], finishedData);*/
	}
	/* CH-1 DMA interrupt.*/
	if ((intr_status & port->_dmaInterruptCH1) && (dmaChan1State == 0x01)) {
		FUNC0(&dev->pci_dev->dev,
			"Port[%d]-DMA CH1 engine complete successful !\n",
			port->idx);
		finishedData = FUNC3(port->DMA_CHAN1_TRANS_STATE);
		finishedData &= 0x003FFFFF;
		/* value of DMA_PORT0_CHAN0_TRANS_STATE register [21:0]
		 * indicate dma total transfer length and
		 * zero of [21:0] indicate dma total transfer length
		 * equal to 0x400000 (4MB)*/
		if (finishedData == 0)
			finishedData = 0x00400000;
		if (finishedData != SMI_TS_DMA_BUF_SIZE) {
			FUNC0(&dev->pci_dev->dev,
				"DMA CH1 engine complete length mismatched, finish data=%d !\n",
				finishedData);
		}
		FUNC1(&port->demux,
			port->cpu_addr[1], (finishedData / 188));
		/*dvb_dmx_swfilter(&port->demux,
			port->cpu_addr[1], finishedData);*/
	}
	/* restart DMA.*/
	if (intr_status & port->_dmaInterruptCH0)
		dmaManagement |= 0x00000002;
	if (intr_status & port->_dmaInterruptCH1)
		dmaManagement |= 0x00020000;
	FUNC4(port->DMA_MANAGEMENT, dmaManagement);
	/* Re-enable interrupts */
	FUNC2(port);
}
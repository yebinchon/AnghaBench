
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct smi_port {int _int_status; int _dmaInterruptCH0; int idx; int _dmaInterruptCH1; int DMA_MANAGEMENT; int * cpu_addr; int demux; int DMA_CHAN1_TRANS_STATE; int DMA_CHAN0_TRANS_STATE; struct smi_dev* dev; } ;
struct smi_dev {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int SMI_TS_DMA_BUF_SIZE ;
 int dev_dbg (int *,char*,int) ;
 int dvb_dmx_swfilter_packets (int *,int ,int) ;
 int smi_port_enableInterrupt (struct smi_port*) ;
 int smi_read (int ) ;
 int smi_write (int ,int) ;

__attribute__((used)) static void smi_dma_xfer(unsigned long data)
{
 struct smi_port *port = (struct smi_port *) data;
 struct smi_dev *dev = port->dev;
 u32 intr_status, finishedData, dmaManagement;
 u8 dmaChan0State, dmaChan1State;

 intr_status = port->_int_status;
 dmaManagement = smi_read(port->DMA_MANAGEMENT);
 dmaChan0State = (u8)((dmaManagement & 0x00000030) >> 4);
 dmaChan1State = (u8)((dmaManagement & 0x00300000) >> 20);


 if ((intr_status & port->_dmaInterruptCH0) && (dmaChan0State == 0x01)) {
  dev_dbg(&dev->pci_dev->dev,
   "Port[%d]-DMA CH0 engine complete successful !\n",
   port->idx);
  finishedData = smi_read(port->DMA_CHAN0_TRANS_STATE);
  finishedData &= 0x003FFFFF;




  if (finishedData == 0)
   finishedData = 0x00400000;
  if (finishedData != SMI_TS_DMA_BUF_SIZE) {
   dev_dbg(&dev->pci_dev->dev,
    "DMA CH0 engine complete length mismatched, finish data=%d !\n",
    finishedData);
  }
  dvb_dmx_swfilter_packets(&port->demux,
   port->cpu_addr[0], (finishedData / 188));


 }

 if ((intr_status & port->_dmaInterruptCH1) && (dmaChan1State == 0x01)) {
  dev_dbg(&dev->pci_dev->dev,
   "Port[%d]-DMA CH1 engine complete successful !\n",
   port->idx);
  finishedData = smi_read(port->DMA_CHAN1_TRANS_STATE);
  finishedData &= 0x003FFFFF;




  if (finishedData == 0)
   finishedData = 0x00400000;
  if (finishedData != SMI_TS_DMA_BUF_SIZE) {
   dev_dbg(&dev->pci_dev->dev,
    "DMA CH1 engine complete length mismatched, finish data=%d !\n",
    finishedData);
  }
  dvb_dmx_swfilter_packets(&port->demux,
   port->cpu_addr[1], (finishedData / 188));


 }

 if (intr_status & port->_dmaInterruptCH0)
  dmaManagement |= 0x00000002;
 if (intr_status & port->_dmaInterruptCH1)
  dmaManagement |= 0x00020000;
 smi_write(port->DMA_MANAGEMENT, dmaManagement);

 smi_port_enableInterrupt(port);
}

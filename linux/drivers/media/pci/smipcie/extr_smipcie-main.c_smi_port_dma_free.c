
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smi_port {int ** cpu_addr; int * dma_addr; TYPE_1__* dev; } ;
struct TYPE_2__ {int pci_dev; } ;


 int SMI_TS_DMA_BUF_SIZE ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void smi_port_dma_free(struct smi_port *port)
{
 if (port->cpu_addr[0]) {
  pci_free_consistent(port->dev->pci_dev, SMI_TS_DMA_BUF_SIZE,
        port->cpu_addr[0], port->dma_addr[0]);
  port->cpu_addr[0] = ((void*)0);
 }
 if (port->cpu_addr[1]) {
  pci_free_consistent(port->dev->pci_dev, SMI_TS_DMA_BUF_SIZE,
        port->cpu_addr[1], port->dma_addr[1]);
  port->cpu_addr[1] = ((void*)0);
 }
}

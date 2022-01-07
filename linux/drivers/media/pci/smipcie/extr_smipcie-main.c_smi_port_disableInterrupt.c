
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_port {int _dmaInterruptCH0; int _dmaInterruptCH1; struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;


 int MSI_INT_ENA_CLR ;
 int smi_write (int ,int) ;

__attribute__((used)) static void smi_port_disableInterrupt(struct smi_port *port)
{
 struct smi_dev *dev = port->dev;

 smi_write(MSI_INT_ENA_CLR,
  (port->_dmaInterruptCH0 | port->_dmaInterruptCH1));
}

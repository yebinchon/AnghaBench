
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;


 int MANTIS_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ mantis_dma_exit (struct mantis_pci*) ;
 int mantis_dma_stop (struct mantis_pci*) ;
 scalar_t__ mantis_dvb_exit (struct mantis_pci*) ;
 scalar_t__ mantis_i2c_exit (struct mantis_pci*) ;
 int mantis_uart_exit (struct mantis_pci*) ;
 int verbose ;

int mantis_core_exit(struct mantis_pci *mantis)
{
 mantis_dma_stop(mantis);
 dprintk(verbose, MANTIS_ERROR, 1, "DMA engine stopping");

 mantis_uart_exit(mantis);
 dprintk(verbose, MANTIS_ERROR, 1, "UART exit failed");

 if (mantis_dma_exit(mantis) < 0)
  dprintk(verbose, MANTIS_ERROR, 1, "DMA exit failed");
 if (mantis_dvb_exit(mantis) < 0)
  dprintk(verbose, MANTIS_ERROR, 1, "DVB exit failed");
 if (mantis_i2c_exit(mantis) < 0)
  dprintk(verbose, MANTIS_ERROR, 1, "I2C adapter delete.. failed");

 return 0;
}

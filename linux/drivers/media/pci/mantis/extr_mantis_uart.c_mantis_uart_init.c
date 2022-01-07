
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mantis_uart_params {size_t baud_rate; size_t parity; } ;
struct mantis_pci {int uart_work; struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {size_t baud_rate; size_t parity; int bytes; } ;
struct TYPE_4__ {int string; } ;
struct TYPE_3__ {int string; } ;


 int INIT_WORK (int *,int ) ;
 int MANTIS_DEBUG ;
 int MANTIS_INFO ;
 int MANTIS_INT_IRQ1 ;
 int MANTIS_UART_BAUD ;
 int MANTIS_UART_CTL ;
 int MANTIS_UART_RXFLUSH ;
 int MANTIS_UART_RXINT ;
 int dprintk (int ,int,char*,...) ;
 int mantis_uart_setup (struct mantis_pci*,struct mantis_uart_params*) ;
 int mantis_uart_work ;
 int mantis_unmask_ints (struct mantis_pci*,int ) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;
 TYPE_2__* parity ;
 TYPE_1__* rates ;
 int schedule_work (int *) ;

int mantis_uart_init(struct mantis_pci *mantis)
{
 struct mantis_hwconfig *config = mantis->hwconfig;
 struct mantis_uart_params params;


 params.baud_rate = config->baud_rate;
 params.parity = config->parity;
 dprintk(MANTIS_INFO, 1, "Initializing UART @ %sbps parity:%s",
  rates[params.baud_rate].string,
  parity[params.parity].string);

 INIT_WORK(&mantis->uart_work, mantis_uart_work);


 mmwrite(mmread(MANTIS_UART_CTL) & 0xffef, MANTIS_UART_CTL);

 mantis_uart_setup(mantis, &params);


 mmwrite((mmread(MANTIS_UART_BAUD) | (config->bytes << 8)), MANTIS_UART_BAUD);


 mmwrite((mmread(MANTIS_UART_CTL) | MANTIS_UART_RXFLUSH), MANTIS_UART_CTL);


 mmwrite(mmread(MANTIS_UART_CTL) | MANTIS_UART_RXINT, MANTIS_UART_CTL);
 mantis_unmask_ints(mantis, MANTIS_INT_IRQ1);

 schedule_work(&mantis->uart_work);
 dprintk(MANTIS_DEBUG, 1, "UART successfully initialized");

 return 0;
}

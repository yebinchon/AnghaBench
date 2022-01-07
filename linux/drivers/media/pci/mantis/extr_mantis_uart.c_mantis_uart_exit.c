
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int uart_work; } ;


 int MANTIS_INT_IRQ1 ;
 int MANTIS_UART_CTL ;
 int flush_work (int *) ;
 int mantis_mask_ints (struct mantis_pci*,int ) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;

void mantis_uart_exit(struct mantis_pci *mantis)
{

 mantis_mask_ints(mantis, MANTIS_INT_IRQ1);
 mmwrite(mmread(MANTIS_UART_CTL) & 0xffef, MANTIS_UART_CTL);
 flush_work(&mantis->uart_work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_mci {int dummy; } ;


 int ATMEL_PDC_PTCR ;
 int ATMEL_PDC_RXTDIS ;
 int ATMEL_PDC_TXTDIS ;
 int atmci_writel (struct atmel_mci*,int ,int) ;

__attribute__((used)) static void atmci_stop_transfer_pdc(struct atmel_mci *host)
{
 atmci_writel(host, ATMEL_PDC_PTCR, ATMEL_PDC_RXTDIS | ATMEL_PDC_TXTDIS);
}

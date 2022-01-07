
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_mci {scalar_t__ data_size; } ;


 int PDC_FIRST_BUF ;
 int PDC_SECOND_BUF ;
 int atmci_pdc_set_single_buf (struct atmel_mci*,int,int ) ;

__attribute__((used)) static void atmci_pdc_set_both_buf(struct atmel_mci *host, int dir)
{
 atmci_pdc_set_single_buf(host, dir, PDC_FIRST_BUF);
 if (host->data_size)
  atmci_pdc_set_single_buf(host, dir, PDC_SECOND_BUF);
}

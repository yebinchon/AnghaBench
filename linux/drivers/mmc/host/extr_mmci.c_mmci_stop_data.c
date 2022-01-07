
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int * data; } ;


 int mmci_set_mask1 (struct mmci_host*,int ) ;
 int mmci_write_datactrlreg (struct mmci_host*,int ) ;

__attribute__((used)) static void mmci_stop_data(struct mmci_host *host)
{
 mmci_write_datactrlreg(host, 0);
 mmci_set_mask1(host, 0);
 host->data = ((void*)0);
}

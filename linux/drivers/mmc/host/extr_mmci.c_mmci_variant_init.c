
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int * ops; } ;


 int mmci_variant_ops ;

void mmci_variant_init(struct mmci_host *host)
{
 host->ops = &mmci_variant_ops;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int * ops; } ;


 int qcom_variant_ops ;

void qcom_variant_init(struct mmci_host *host)
{
 host->ops = &qcom_variant_ops;
}

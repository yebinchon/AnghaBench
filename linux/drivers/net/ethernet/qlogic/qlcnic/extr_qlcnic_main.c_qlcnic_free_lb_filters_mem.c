
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * fhead; scalar_t__ fmax; } ;
struct TYPE_3__ {scalar_t__ fmax; int * fhead; } ;
struct qlcnic_adapter {TYPE_2__ rx_fhash; TYPE_1__ fhash; } ;


 int kfree (int *) ;

__attribute__((used)) static void qlcnic_free_lb_filters_mem(struct qlcnic_adapter *adapter)
{
 if (adapter->fhash.fmax)
  kfree(adapter->fhash.fhead);

 adapter->fhash.fhead = ((void*)0);
 adapter->fhash.fmax = 0;

 if (adapter->rx_fhash.fmax)
  kfree(adapter->rx_fhash.fhead);

 adapter->rx_fhash.fmax = 0;
 adapter->rx_fhash.fhead = ((void*)0);
}

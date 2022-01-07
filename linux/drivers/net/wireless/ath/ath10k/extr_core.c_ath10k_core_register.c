
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_bus_params {int dummy; } ;
struct ath10k {int register_work; int workqueue; struct ath10k_bus_params bus_param; } ;


 int queue_work (int ,int *) ;

int ath10k_core_register(struct ath10k *ar,
    const struct ath10k_bus_params *bus_params)
{
 ar->bus_param = *bus_params;

 queue_work(ar->workqueue, &ar->register_work);

 return 0;
}

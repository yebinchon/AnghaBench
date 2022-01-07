
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce {TYPE_1__* bus_ops; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int (* get_num_banks ) (struct ath10k*) ;} ;


 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int stub1 (struct ath10k*) ;

__attribute__((used)) static int ath10k_bus_get_num_banks(struct ath10k *ar)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);

 return ce->bus_ops->get_num_banks(ar);
}

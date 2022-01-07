
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_ce {TYPE_1__* bus_ops; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int (* read32 ) (struct ath10k*,int ) ;} ;


 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int stub1 (struct ath10k*,int ) ;

inline u32 ath10k_pci_read32(struct ath10k *ar, u32 offset)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);

 return ce->bus_ops->read32(ar, offset);
}

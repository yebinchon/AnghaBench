
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath10k_ahb {scalar_t__ mem; } ;
struct ath10k {int dummy; } ;


 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static u32 ath10k_ahb_read32(struct ath10k *ar, u32 offset)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);

 return ioread32(ar_ahb->mem + offset);
}

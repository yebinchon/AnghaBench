
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath10k_snoc {scalar_t__ mem; } ;
struct ath10k {int dummy; } ;


 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ath10k_snoc_write32(struct ath10k *ar, u32 offset, u32 value)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);

 iowrite32(value, ar_snoc->mem + offset);
}

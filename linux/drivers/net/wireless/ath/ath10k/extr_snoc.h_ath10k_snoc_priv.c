
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc {int dummy; } ;
struct ath10k {scalar_t__ drv_priv; } ;



__attribute__((used)) static inline struct ath10k_snoc *ath10k_snoc_priv(struct ath10k *ar)
{
 return (struct ath10k_snoc *)ar->drv_priv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce {int dummy; } ;
struct ath10k {scalar_t__ ce_priv; } ;



__attribute__((used)) static inline struct ath10k_ce *ath10k_ce_priv(struct ath10k *ar)
{
 return (struct ath10k_ce *)ar->ce_priv;
}

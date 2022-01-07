
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_sdio {int dummy; } ;
struct ath6kl {struct ath6kl_sdio* hif_priv; } ;



__attribute__((used)) static inline struct ath6kl_sdio *ath6kl_sdio_priv(struct ath6kl *ar)
{
 return ar->hif_priv;
}

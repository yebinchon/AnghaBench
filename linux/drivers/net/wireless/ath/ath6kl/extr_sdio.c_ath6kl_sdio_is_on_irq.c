
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_sdio {int irq_handling; } ;
struct ath6kl {int dummy; } ;


 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int atomic_read (int *) ;

__attribute__((used)) static bool ath6kl_sdio_is_on_irq(struct ath6kl *ar)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);

 return !atomic_read(&ar_sdio->irq_handling);
}

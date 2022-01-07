
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_sd {struct tifm_dev* dev; } ;
struct tifm_dev {int lock; scalar_t__ addr; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ SOCK_PRESENT_STATE ;
 int TIFM_MMCSD_CARD_RO ;
 struct tifm_sd* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tifm_sd_ro(struct mmc_host *mmc)
{
 int rc = 0;
 struct tifm_sd *host = mmc_priv(mmc);
 struct tifm_dev *sock = host->dev;
 unsigned long flags;

 spin_lock_irqsave(&sock->lock, flags);
 if (TIFM_MMCSD_CARD_RO & readl(sock->addr + SOCK_PRESENT_STATE))
  rc = 1;
 spin_unlock_irqrestore(&sock->lock, flags);
 return rc;
}

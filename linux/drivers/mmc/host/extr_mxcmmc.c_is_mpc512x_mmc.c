
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {scalar_t__ devtype; } ;


 scalar_t__ MPC512X_MMC ;

__attribute__((used)) static inline int is_mpc512x_mmc(struct mxcmci_host *host)
{
 return host->devtype == MPC512X_MMC;
}

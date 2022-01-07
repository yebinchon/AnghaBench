
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps2; } ;


 int MMC_CAP2_BOOTPART_NOACC ;

__attribute__((used)) static inline int mmc_boot_partition_access(struct mmc_host *host)
{
 return !(host->caps2 & MMC_CAP2_BOOTPART_NOACC);
}

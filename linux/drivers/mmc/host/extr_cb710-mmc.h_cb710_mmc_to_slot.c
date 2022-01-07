
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;


 struct cb710_slot* cb710_pdev_to_slot (struct platform_device*) ;
 int mmc_dev (struct mmc_host*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static inline struct cb710_slot *cb710_mmc_to_slot(struct mmc_host *mmc)
{
 struct platform_device *pdev = to_platform_device(mmc_dev(mmc));
 return cb710_pdev_to_slot(pdev);
}

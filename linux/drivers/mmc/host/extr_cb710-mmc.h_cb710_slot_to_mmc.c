
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct cb710_slot {int pdev; } ;


 struct mmc_host* platform_get_drvdata (int *) ;

__attribute__((used)) static inline struct mmc_host *cb710_slot_to_mmc(struct cb710_slot *slot)
{
 return platform_get_drvdata(&slot->pdev);
}

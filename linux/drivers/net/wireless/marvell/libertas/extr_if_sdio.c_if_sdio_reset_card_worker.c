
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int mmc_add_host (int ) ;
 int mmc_remove_host (int ) ;
 int pr_info (char*) ;
 int reset_host ;

__attribute__((used)) static void if_sdio_reset_card_worker(struct work_struct *work)
{
 pr_info("Resetting card...");
 mmc_remove_host(reset_host);
 mmc_add_host(reset_host);
}

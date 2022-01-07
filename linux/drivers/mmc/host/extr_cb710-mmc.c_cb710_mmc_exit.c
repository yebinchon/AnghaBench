
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int finish_req_tasklet; } ;


 int CB710_MMC_CONFIGB_PORT ;
 int CB710_MMC_CONFIG_PORT ;
 int CB710_MMC_IE_CARD_INSERTION_STATUS ;
 int cb710_mmc_enable_irq (struct cb710_slot*,int ,int ) ;
 struct cb710_slot* cb710_pdev_to_slot (struct platform_device*) ;
 int cb710_set_irq_handler (struct cb710_slot*,int *) ;
 struct mmc_host* cb710_slot_to_mmc (struct cb710_slot*) ;
 int cb710_write_port_16 (struct cb710_slot*,int ,int ) ;
 int cb710_write_port_32 (struct cb710_slot*,int ,int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct cb710_mmc_reader* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int cb710_mmc_exit(struct platform_device *pdev)
{
 struct cb710_slot *slot = cb710_pdev_to_slot(pdev);
 struct mmc_host *mmc = cb710_slot_to_mmc(slot);
 struct cb710_mmc_reader *reader = mmc_priv(mmc);

 cb710_mmc_enable_irq(slot, 0, CB710_MMC_IE_CARD_INSERTION_STATUS);

 mmc_remove_host(mmc);


 cb710_mmc_enable_irq(slot, 0, ~0);
 cb710_set_irq_handler(slot, ((void*)0));


 cb710_write_port_32(slot, CB710_MMC_CONFIG_PORT, 0);
 cb710_write_port_16(slot, CB710_MMC_CONFIGB_PORT, 0);

 tasklet_kill(&reader->finish_req_tasklet);

 mmc_free_host(mmc);
 return 0;
}

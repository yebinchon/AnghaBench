
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;


 int CB710_MMC_S3_CARD_DETECTED ;
 int CB710_MMC_STATUS3_PORT ;
 struct cb710_slot* cb710_mmc_to_slot (struct mmc_host*) ;
 int cb710_read_port_8 (struct cb710_slot*,int ) ;

__attribute__((used)) static int cb710_mmc_get_cd(struct mmc_host *mmc)
{
 struct cb710_slot *slot = cb710_mmc_to_slot(mmc);

 return cb710_read_port_8(slot, CB710_MMC_STATUS3_PORT)
  & CB710_MMC_S3_CARD_DETECTED;
}

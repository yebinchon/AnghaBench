
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int dummy; } ;


 int CB710_MMC_S2_BUSY_20 ;
 int CB710_MMC_TRANSFER_SIZE_PORT ;
 int cb710_slot_dev (struct cb710_slot*) ;
 int cb710_wait_while_busy (struct cb710_slot*,int ) ;
 int cb710_write_port_32 (struct cb710_slot*,int ,size_t) ;
 int dev_vdbg (int ,char*,size_t,char*,size_t) ;

__attribute__((used)) static void cb710_mmc_set_transfer_size(struct cb710_slot *slot,
 size_t count, size_t blocksize)
{
 cb710_wait_while_busy(slot, CB710_MMC_S2_BUSY_20);
 cb710_write_port_32(slot, CB710_MMC_TRANSFER_SIZE_PORT,
  ((count - 1) << 16)|(blocksize - 1));

 dev_vdbg(cb710_slot_dev(slot), "set up for %zu block%s of %zu bytes\n",
  count, count == 1 ? "" : "s", blocksize);
}

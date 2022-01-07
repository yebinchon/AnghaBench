
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {int dummy; } ;
struct mmc_data {size_t blocks; int blksz; int sg_len; int sg; } ;
struct cb710_slot {scalar_t__ iobase; } ;


 int CB710_MMC_C2_READ_PIO_SIZE_MASK ;
 int CB710_MMC_CONFIG2_PORT ;
 scalar_t__ CB710_MMC_DATA_PORT ;
 int CB710_MMC_S1_PIO_TRANSFER_DONE ;
 int CB710_MMC_S2_FIFO_EMPTY ;
 int CB710_MMC_STATUS2_PORT ;
 int EINVAL ;
 int SG_MITER_FROM_SG ;
 int cb710_modify_port_8 (struct cb710_slot*,int ,int ,int ) ;
 int cb710_read_port_8 (struct cb710_slot*,int ) ;
 int cb710_sg_dwiter_read_to_io (struct sg_mapping_iter*,scalar_t__,int) ;
 int cb710_wait_for_event (struct cb710_slot*,int ) ;
 int sg_miter_start (struct sg_mapping_iter*,int ,int ,int ) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cb710_mmc_send(struct cb710_slot *slot, struct mmc_data *data)
{
 struct sg_mapping_iter miter;
 size_t len, blocks = data->blocks;
 int err = 0;



 if (unlikely(data->blocks > 1 && data->blksz & 15))
  return -EINVAL;

 sg_miter_start(&miter, data->sg, data->sg_len, SG_MITER_FROM_SG);

 cb710_modify_port_8(slot, CB710_MMC_CONFIG2_PORT,
  0, CB710_MMC_C2_READ_PIO_SIZE_MASK);

 while (blocks-- > 0) {
  len = (data->blksz + 15) >> 4;
  do {
   if (!(cb710_read_port_8(slot, CB710_MMC_STATUS2_PORT)
       & CB710_MMC_S2_FIFO_EMPTY)) {
    err = cb710_wait_for_event(slot,
     CB710_MMC_S1_PIO_TRANSFER_DONE);
    if (err)
     goto out;
   }
   cb710_sg_dwiter_read_to_io(&miter,
    slot->iobase + CB710_MMC_DATA_PORT, 4);
  } while (--len);
 }
out:
 sg_miter_stop(&miter);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {int dummy; } ;
struct mmc_data {size_t blocks; int blksz; int sg_len; int sg; } ;
struct cb710_slot {int dummy; } ;


 int CB710_MMC_C2_READ_PIO_SIZE_MASK ;
 int CB710_MMC_CONFIG2_PORT ;
 int EINVAL ;
 int SG_MITER_TO_SG ;
 int cb710_mmc_fifo_hack (struct cb710_slot*) ;
 int cb710_mmc_receive_pio (struct cb710_slot*,struct sg_mapping_iter*,size_t) ;
 int cb710_modify_port_8 (struct cb710_slot*,int ,size_t,int ) ;
 int sg_miter_start (struct sg_mapping_iter*,int ,int ,int ) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cb710_mmc_receive(struct cb710_slot *slot, struct mmc_data *data)
{
 struct sg_mapping_iter miter;
 size_t len, blocks = data->blocks;
 int err = 0;



 if (unlikely(data->blksz & 15 && (data->blocks != 1 || data->blksz != 8)))
  return -EINVAL;

 sg_miter_start(&miter, data->sg, data->sg_len, SG_MITER_TO_SG);

 cb710_modify_port_8(slot, CB710_MMC_CONFIG2_PORT,
  15, CB710_MMC_C2_READ_PIO_SIZE_MASK);

 cb710_mmc_fifo_hack(slot);

 while (blocks-- > 0) {
  len = data->blksz;

  while (len >= 16) {
   err = cb710_mmc_receive_pio(slot, &miter, 4);
   if (err)
    goto out;
   len -= 16;
  }

  if (!len)
   continue;

  cb710_modify_port_8(slot, CB710_MMC_CONFIG2_PORT,
   len - 1, CB710_MMC_C2_READ_PIO_SIZE_MASK);

  len = (len >= 8) ? 4 : 2;
  err = cb710_mmc_receive_pio(slot, &miter, len);
  if (err)
   goto out;
 }
out:
 sg_miter_stop(&miter);
 return err;
}

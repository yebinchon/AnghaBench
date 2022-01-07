
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct if_spi_card {int dummy; } ;


 int ETIMEDOUT ;
 int mdelay (int) ;
 int spu_read_u32 (struct if_spi_card*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int spu_wait_for_u32(struct if_spi_card *card, u32 reg, u32 target)
{
 int err, try;
 for (try = 0; try < 4; ++try) {
  u32 val = 0;
  err = spu_read_u32(card, reg, &val);
  if (err)
   return err;
  if (val == target)
   return 0;
  mdelay(100);
 }
 return -ETIMEDOUT;
}

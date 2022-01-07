
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct if_spi_card {int dummy; } ;


 int IF_SPI_DEVICEID_CTRL_REG ;
 int IF_SPI_DEVICEID_CTRL_REG_TO_CARD_ID (int ) ;
 int IF_SPI_DEVICEID_CTRL_REG_TO_CARD_REV (int ) ;
 int spu_read_u32 (struct if_spi_card*,int ,int *) ;

__attribute__((used)) static int spu_get_chip_revision(struct if_spi_card *card,
      u16 *card_id, u8 *card_rev)
{
 int err = 0;
 u32 dev_ctrl;
 err = spu_read_u32(card, IF_SPI_DEVICEID_CTRL_REG, &dev_ctrl);
 if (err)
  return err;
 *card_id = IF_SPI_DEVICEID_CTRL_REG_TO_CARD_ID(dev_ctrl);
 *card_rev = IF_SPI_DEVICEID_CTRL_REG_TO_CARD_REV(dev_ctrl);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct if_spi_card {int use_dummy_writes; int spu_port_delay; int spu_reg_delay; } ;


 int IF_SPI_BUS_MODE_16_BIT_ADDRESS_16_BIT_DATA ;
 int IF_SPI_BUS_MODE_DELAY_METHOD_DUMMY_CLOCK ;
 int IF_SPI_BUS_MODE_DELAY_METHOD_TIMED ;
 int IF_SPI_BUS_MODE_SPI_CLOCK_PHASE_RISING ;
 int IF_SPI_DELAY_READ_REG ;
 int lbs_deb_spi (char*,int,int) ;
 int spu_read_u32 (struct if_spi_card*,int ,int*) ;
 int spu_set_bus_mode (struct if_spi_card*,int) ;

__attribute__((used)) static int spu_init(struct if_spi_card *card, int use_dummy_writes)
{
 int err = 0;
 u32 delay;





 card->use_dummy_writes = 0;
 err = spu_set_bus_mode(card,
    IF_SPI_BUS_MODE_SPI_CLOCK_PHASE_RISING |
    IF_SPI_BUS_MODE_DELAY_METHOD_TIMED |
    IF_SPI_BUS_MODE_16_BIT_ADDRESS_16_BIT_DATA);
 if (err)
  return err;
 card->spu_port_delay = 1000;
 card->spu_reg_delay = 1000;
 err = spu_read_u32(card, IF_SPI_DELAY_READ_REG, &delay);
 if (err)
  return err;
 card->spu_port_delay = delay & 0x0000ffff;
 card->spu_reg_delay = (delay & 0xffff0000) >> 16;


 if (use_dummy_writes) {
  card->use_dummy_writes = 1;
  err = spu_set_bus_mode(card,
    IF_SPI_BUS_MODE_SPI_CLOCK_PHASE_RISING |
    IF_SPI_BUS_MODE_DELAY_METHOD_DUMMY_CLOCK |
    IF_SPI_BUS_MODE_16_BIT_ADDRESS_16_BIT_DATA);
  if (err)
   return err;
 }

 lbs_deb_spi("Initialized SPU unit. "
      "spu_port_delay=0x%04lx, spu_reg_delay=0x%04lx\n",
      card->spu_port_delay, card->spu_reg_delay);
 return err;
}

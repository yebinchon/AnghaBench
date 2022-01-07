
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5c73m3 {int i2c_client; scalar_t__ i2c_write_address; scalar_t__ i2c_read_address; } ;


 int AHB_MSB_ADDR_PTR ;
 scalar_t__ boot_from_rom ;
 int s5c73m3_i2c_write (int ,int ,int) ;
 int s5c73m3_rom_boot (struct s5c73m3*,int) ;
 int s5c73m3_spi_boot (struct s5c73m3*,int) ;

__attribute__((used)) static int s5c73m3_isp_init(struct s5c73m3 *state)
{
 int ret;

 state->i2c_read_address = 0;
 state->i2c_write_address = 0;

 ret = s5c73m3_i2c_write(state->i2c_client, AHB_MSB_ADDR_PTR, 0x3310);
 if (ret < 0)
  return ret;

 if (boot_from_rom)
  return s5c73m3_rom_boot(state, 1);
 else
  return s5c73m3_spi_boot(state, 1);
}

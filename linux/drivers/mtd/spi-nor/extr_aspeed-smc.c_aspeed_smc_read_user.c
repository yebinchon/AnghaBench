
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef int u8 ;
struct spi_nor {int read_opcode; struct aspeed_smc_chip* priv; } ;
struct TYPE_2__ {int read_dummy; } ;
struct aspeed_smc_chip {int ahb_base; TYPE_1__ nor; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
typedef int dummy ;


 int aspeed_smc_read_from_ahb (int *,int ,size_t) ;
 int aspeed_smc_send_cmd_addr (struct spi_nor*,int ,int ) ;
 int aspeed_smc_start_user (struct spi_nor*) ;
 int aspeed_smc_stop_user (struct spi_nor*) ;
 int aspeed_smc_write_to_ahb (int ,int*,int) ;

__attribute__((used)) static ssize_t aspeed_smc_read_user(struct spi_nor *nor, loff_t from,
        size_t len, u_char *read_buf)
{
 struct aspeed_smc_chip *chip = nor->priv;
 int i;
 u8 dummy = 0xFF;

 aspeed_smc_start_user(nor);
 aspeed_smc_send_cmd_addr(nor, nor->read_opcode, from);
 for (i = 0; i < chip->nor.read_dummy / 8; i++)
  aspeed_smc_write_to_ahb(chip->ahb_base, &dummy, sizeof(dummy));

 aspeed_smc_read_from_ahb(read_buf, chip->ahb_base, len);
 aspeed_smc_stop_user(nor);
 return len;
}

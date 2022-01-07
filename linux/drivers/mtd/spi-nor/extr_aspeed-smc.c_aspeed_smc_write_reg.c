
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {struct aspeed_smc_chip* priv; } ;
struct aspeed_smc_chip {int ahb_base; } ;


 int aspeed_smc_start_user (struct spi_nor*) ;
 int aspeed_smc_stop_user (struct spi_nor*) ;
 int aspeed_smc_write_to_ahb (int ,int *,int) ;

__attribute__((used)) static int aspeed_smc_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
    int len)
{
 struct aspeed_smc_chip *chip = nor->priv;

 aspeed_smc_start_user(nor);
 aspeed_smc_write_to_ahb(chip->ahb_base, &opcode, 1);
 aspeed_smc_write_to_ahb(chip->ahb_base, buf, len);
 aspeed_smc_stop_user(nor);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct spi_nor {int program_opcode; struct aspeed_smc_chip* priv; } ;
struct aspeed_smc_chip {int ahb_base; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int aspeed_smc_send_cmd_addr (struct spi_nor*,int ,int ) ;
 int aspeed_smc_start_user (struct spi_nor*) ;
 int aspeed_smc_stop_user (struct spi_nor*) ;
 int aspeed_smc_write_to_ahb (int ,int const*,size_t) ;

__attribute__((used)) static ssize_t aspeed_smc_write_user(struct spi_nor *nor, loff_t to,
         size_t len, const u_char *write_buf)
{
 struct aspeed_smc_chip *chip = nor->priv;

 aspeed_smc_start_user(nor);
 aspeed_smc_send_cmd_addr(nor, nor->program_opcode, to);
 aspeed_smc_write_to_ahb(chip->ahb_base, write_buf, len);
 aspeed_smc_stop_user(nor);
 return len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_nor {int addr_width; struct aspeed_smc_chip* priv; } ;
struct aspeed_smc_chip {int ahb_base; } ;
typedef int __be32 ;


 int WARN_ONCE (int,char*,int) ;
 int aspeed_smc_write_to_ahb (int ,int*,int) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static void aspeed_smc_send_cmd_addr(struct spi_nor *nor, u8 cmd, u32 addr)
{
 struct aspeed_smc_chip *chip = nor->priv;
 __be32 temp;
 u32 cmdaddr;

 switch (nor->addr_width) {
 default:
  WARN_ONCE(1, "Unexpected address width %u, defaulting to 3\n",
     nor->addr_width);

 case 3:
  cmdaddr = addr & 0xFFFFFF;
  cmdaddr |= cmd << 24;

  temp = cpu_to_be32(cmdaddr);
  aspeed_smc_write_to_ahb(chip->ahb_base, &temp, 4);
  break;
 case 4:
  temp = cpu_to_be32(addr);
  aspeed_smc_write_to_ahb(chip->ahb_base, &cmd, 1);
  aspeed_smc_write_to_ahb(chip->ahb_base, &temp, 4);
  break;
 }
}

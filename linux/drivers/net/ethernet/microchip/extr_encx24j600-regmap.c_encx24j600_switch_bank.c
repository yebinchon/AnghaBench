
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_context {int bank; int spi; } ;


 int BANK_SELECT (int) ;
 int spi_write (int ,int*,int) ;

__attribute__((used)) static int encx24j600_switch_bank(struct encx24j600_context *ctx,
      int bank)
{
 int ret = 0;
 int bank_opcode = BANK_SELECT(bank);

 ret = spi_write(ctx->spi, &bank_opcode, 1);
 if (ret == 0)
  ctx->bank = bank;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct encx24j600_context {int bank; int spi; } ;


 int ADDR_MASK ;
 int BANK_MASK ;
 int BANK_SHIFT ;



 int EINVAL ;






 int RCRCODE ;
 int RCRU ;
 int RGPRDPT ;
 int RGPWRPT ;
 int RRXRDPT ;
 int RRXWRPT ;
 int RUDARDPT ;
 int RUDAWRPT ;
 int encx24j600_switch_bank (struct encx24j600_context*,int) ;
 int spi_write_then_read (int ,int*,int,int*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int regmap_encx24j600_sfr_read(void *context, u8 reg, u8 *val,
          size_t len)
{
 struct encx24j600_context *ctx = context;
 u8 banked_reg = reg & ADDR_MASK;
 u8 bank = ((reg & BANK_MASK) >> BANK_SHIFT);
 u8 cmd = RCRU;
 int ret = 0;
 int i = 0;
 u8 tx_buf[2];

 if (reg < 0x80) {
  cmd = RCRCODE | banked_reg;
  if ((banked_reg < 0x16) && (ctx->bank != bank))
   ret = encx24j600_switch_bank(ctx, bank);
  if (unlikely(ret))
   return ret;
 } else {



  switch (reg) {
  case 135:
   cmd = RGPRDPT; break;
  case 134:
   cmd = RGPWRPT; break;
  case 132:
   cmd = RRXRDPT; break;
  case 131:
   cmd = RRXWRPT; break;
  case 129:
   cmd = RUDARDPT; break;
  case 128:
   cmd = RUDAWRPT; break;
  case 136:
  case 133:
  case 130:
  default:
   return -EINVAL;
  }
 }

 tx_buf[i++] = cmd;
 if (cmd == RCRU)
  tx_buf[i++] = reg;

 ret = spi_write_then_read(ctx->spi, tx_buf, i, val, len);

 return ret;
}

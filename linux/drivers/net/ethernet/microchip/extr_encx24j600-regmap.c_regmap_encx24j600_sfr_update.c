
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct encx24j600_context {int bank; int spi; } ;
typedef int reg ;
typedef int cmd ;


 int ADDR_MASK ;
 int BANK_MASK ;
 int BANK_SHIFT ;



 int EINVAL ;






 int WGPRDPT ;
 int WGPWRPT ;
 int WRXRDPT ;
 int WRXWRPT ;
 int WUDARDPT ;
 int WUDAWRPT ;
 int encx24j600_switch_bank (struct encx24j600_context*,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int regmap_encx24j600_sfr_update(struct encx24j600_context *ctx,
     u8 reg, u8 *val, size_t len,
     u8 unbanked_cmd, u8 banked_code)
{
 u8 banked_reg = reg & ADDR_MASK;
 u8 bank = ((reg & BANK_MASK) >> BANK_SHIFT);
 u8 cmd = unbanked_cmd;
 struct spi_message m;
 struct spi_transfer t[3] = { { .tx_buf = &cmd, .len = sizeof(cmd), },
         { .tx_buf = &reg, .len = sizeof(reg), },
         { .tx_buf = val, .len = len }, };

 if (reg < 0x80) {
  int ret = 0;

  cmd = banked_code | banked_reg;
  if ((banked_reg < 0x16) && (ctx->bank != bank))
   ret = encx24j600_switch_bank(ctx, bank);
  if (unlikely(ret))
   return ret;
 } else {



  switch (reg) {
  case 135:
   cmd = WGPRDPT; break;
  case 134:
   cmd = WGPWRPT; break;
  case 132:
   cmd = WRXRDPT; break;
  case 131:
   cmd = WRXWRPT; break;
  case 129:
   cmd = WUDARDPT; break;
  case 128:
   cmd = WUDAWRPT; break;
  case 136:
  case 133:
  case 130:
  default:
   return -EINVAL;
  }
 }

 spi_message_init(&m);
 spi_message_add_tail(&t[0], &m);

 if (cmd == unbanked_cmd) {
  t[1].tx_buf = &reg;
  spi_message_add_tail(&t[1], &m);
 }

 spi_message_add_tail(&t[2], &m);
 return spi_sync(ctx->spi, &m);
}

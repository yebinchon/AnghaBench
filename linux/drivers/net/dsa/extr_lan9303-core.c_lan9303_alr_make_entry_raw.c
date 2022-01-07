
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan9303 {int dummy; } ;


 int ALR_STS_MAKE_PEND ;
 int LAN9303_ALR_CMD_MAKE_ENTRY ;
 int LAN9303_SWE_ALR_CMD ;
 int LAN9303_SWE_ALR_CMD_STS ;
 int LAN9303_SWE_ALR_WR_DAT_0 ;
 int LAN9303_SWE_ALR_WR_DAT_1 ;
 int lan9303_csr_reg_wait (struct lan9303*,int ,int ) ;
 int lan9303_write_switch_reg (struct lan9303*,int ,int ) ;

__attribute__((used)) static int lan9303_alr_make_entry_raw(struct lan9303 *chip, u32 dat0, u32 dat1)
{
 lan9303_write_switch_reg(chip, LAN9303_SWE_ALR_WR_DAT_0, dat0);
 lan9303_write_switch_reg(chip, LAN9303_SWE_ALR_WR_DAT_1, dat1);
 lan9303_write_switch_reg(chip, LAN9303_SWE_ALR_CMD,
     LAN9303_ALR_CMD_MAKE_ENTRY);
 lan9303_csr_reg_wait(chip, LAN9303_SWE_ALR_CMD_STS, ALR_STS_MAKE_PEND);
 lan9303_write_switch_reg(chip, LAN9303_SWE_ALR_CMD, 0);

 return 0;
}

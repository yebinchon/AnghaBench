
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_nfc {scalar_t__ reg_base; } ;


 int NFC_CMD_SEED ;
 scalar_t__ NFC_REG_CMD ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_nfc_cmd_seed(struct meson_nfc *nfc, u32 seed)
{
 writel(NFC_CMD_SEED | (0xc2 + (seed & 0x7fff)),
        nfc->reg_base + NFC_REG_CMD);
}

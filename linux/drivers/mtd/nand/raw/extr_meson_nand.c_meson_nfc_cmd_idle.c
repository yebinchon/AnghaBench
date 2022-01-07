
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip_select; } ;
struct meson_nfc {scalar_t__ reg_base; TYPE_1__ param; } ;


 int NFC_CMD_IDLE ;
 scalar_t__ NFC_REG_CMD ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_nfc_cmd_idle(struct meson_nfc *nfc, u32 time)
{
 writel(nfc->param.chip_select | NFC_CMD_IDLE | (time & 0x3ff),
        nfc->reg_base + NFC_REG_CMD);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_nfc {int dummy; } ;


 int meson_nfc_cmd_idle (struct meson_nfc*,int ) ;

__attribute__((used)) static void meson_nfc_drain_cmd(struct meson_nfc *nfc)
{
 meson_nfc_cmd_idle(nfc, 0);
 meson_nfc_cmd_idle(nfc, 0);
}

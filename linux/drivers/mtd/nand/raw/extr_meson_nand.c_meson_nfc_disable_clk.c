
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_nfc {int core_clk; int device_clk; int phase_tx; int phase_rx; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void meson_nfc_disable_clk(struct meson_nfc *nfc)
{
 clk_disable_unprepare(nfc->phase_rx);
 clk_disable_unprepare(nfc->phase_tx);
 clk_disable_unprepare(nfc->device_clk);
 clk_disable_unprepare(nfc->core_clk);
}

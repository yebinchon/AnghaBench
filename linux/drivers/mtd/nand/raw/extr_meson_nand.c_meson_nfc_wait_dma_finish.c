
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_nfc {int dummy; } ;


 int DMA_BUSY_TIMEOUT ;
 int meson_nfc_drain_cmd (struct meson_nfc*) ;
 int meson_nfc_wait_cmd_finish (struct meson_nfc*,int ) ;

__attribute__((used)) static int meson_nfc_wait_dma_finish(struct meson_nfc *nfc)
{
 meson_nfc_drain_cmd(nfc);

 return meson_nfc_wait_cmd_finish(nfc, DMA_BUSY_TIMEOUT);
}

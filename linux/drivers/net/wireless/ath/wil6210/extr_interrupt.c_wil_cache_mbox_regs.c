
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx; int rx; } ;
struct wil6210_priv {TYPE_1__ mbox_ctl; scalar_t__ csr; } ;
struct wil6210_mbox_ctl {int dummy; } ;


 scalar_t__ HOST_MBOX ;
 int wil_mbox_ring_le2cpus (int *) ;
 int wil_memcpy_fromio_32 (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static void wil_cache_mbox_regs(struct wil6210_priv *wil)
{

 wil_memcpy_fromio_32(&wil->mbox_ctl, wil->csr + HOST_MBOX,
        sizeof(struct wil6210_mbox_ctl));
 wil_mbox_ring_le2cpus(&wil->mbox_ctl.rx);
 wil_mbox_ring_le2cpus(&wil->mbox_ctl.tx);
}

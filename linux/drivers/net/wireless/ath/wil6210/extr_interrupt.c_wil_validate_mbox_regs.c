
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wmi_cmd_hdr {int dummy; } ;
struct TYPE_5__ {size_t entry_size; } ;
struct TYPE_4__ {size_t entry_size; } ;
struct TYPE_6__ {TYPE_2__ tx; TYPE_1__ rx; } ;
struct wil6210_priv {TYPE_3__ mbox_ctl; } ;
struct wil6210_mbox_hdr {int dummy; } ;


 int wil_err (struct wil6210_priv*,char*,size_t) ;

__attribute__((used)) static bool wil_validate_mbox_regs(struct wil6210_priv *wil)
{
 size_t min_size = sizeof(struct wil6210_mbox_hdr) +
  sizeof(struct wmi_cmd_hdr);

 if (wil->mbox_ctl.rx.entry_size < min_size) {
  wil_err(wil, "rx mbox entry too small (%d)\n",
   wil->mbox_ctl.rx.entry_size);
  return 0;
 }
 if (wil->mbox_ctl.tx.entry_size < min_size) {
  wil_err(wil, "tx mbox entry too small (%d)\n",
   wil->mbox_ctl.tx.entry_size);
  return 0;
 }

 return 1;
}

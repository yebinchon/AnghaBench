
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;
struct brcmf_if {int vif; struct brcmf_pub* drvr; } ;
typedef scalar_t__ s32 ;


 int INFO ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_dbg (int ,char*,int) ;
 scalar_t__ brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;
 scalar_t__ check_vif_up (int ) ;

void brcmf_set_mpc(struct brcmf_if *ifp, int mpc)
{
 struct brcmf_pub *drvr = ifp->drvr;
 s32 err = 0;

 if (check_vif_up(ifp->vif)) {
  err = brcmf_fil_iovar_int_set(ifp, "mpc", mpc);
  if (err) {
   bphy_err(drvr, "fail to set mpc\n");
   return;
  }
  brcmf_dbg(INFO, "MPC : %d\n", mpc);
 }
}

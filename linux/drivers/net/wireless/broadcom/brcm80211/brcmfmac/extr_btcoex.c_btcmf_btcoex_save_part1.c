
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_if {int dummy; } ;
struct brcmf_btcoex_info {int saved_regs_part1; int reg68; int reg41; int reg66; TYPE_1__* vif; } ;
struct TYPE_2__ {struct brcmf_if* ifp; } ;


 int INFO ;
 int brcmf_btcoex_params_read (struct brcmf_if*,int,int *) ;
 int brcmf_dbg (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void btcmf_btcoex_save_part1(struct brcmf_btcoex_info *btci)
{
 struct brcmf_if *ifp = btci->vif->ifp;

 if (!btci->saved_regs_part1) {

  brcmf_btcoex_params_read(ifp, 66, &btci->reg66);
  brcmf_btcoex_params_read(ifp, 41, &btci->reg41);
  brcmf_btcoex_params_read(ifp, 68, &btci->reg68);
  btci->saved_regs_part1 = 1;
  brcmf_dbg(INFO,
     "saved btc_params regs (66,41,68) 0x%x 0x%x 0x%x\n",
     btci->reg66, btci->reg41,
     btci->reg68);
 }
}

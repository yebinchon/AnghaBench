
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_fws_info {int dummy; } ;
struct brcmf_bcdc {struct brcmf_fws_info* fws; } ;
struct TYPE_2__ {struct brcmf_bcdc* pd; } ;


 scalar_t__ IS_ERR (struct brcmf_fws_info*) ;
 int PTR_ERR (struct brcmf_fws_info*) ;
 struct brcmf_fws_info* brcmf_fws_attach (struct brcmf_pub*) ;

__attribute__((used)) static int
brcmf_proto_bcdc_init_done(struct brcmf_pub *drvr)
{
 struct brcmf_bcdc *bcdc = drvr->proto->pd;
 struct brcmf_fws_info *fws;

 fws = brcmf_fws_attach(drvr);
 if (IS_ERR(fws))
  return PTR_ERR(fws);

 bcdc->fws = fws;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_bcdc {int fws; } ;
struct TYPE_2__ {struct brcmf_bcdc* pd; } ;


 int brcmf_fws_detach (int ) ;
 int kfree (struct brcmf_bcdc*) ;

void brcmf_proto_bcdc_detach(struct brcmf_pub *drvr)
{
 struct brcmf_bcdc *bcdc = drvr->proto->pd;

 drvr->proto->pd = ((void*)0);
 brcmf_fws_detach(bcdc->fws);
 kfree(bcdc);
}

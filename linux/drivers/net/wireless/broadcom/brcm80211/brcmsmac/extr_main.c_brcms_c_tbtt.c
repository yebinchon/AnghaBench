
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {int qvalid; TYPE_1__* bsscfg; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ BRCMS_TYPE_ADHOC ;
 int MCMD_DIRFRMQVAL ;

__attribute__((used)) static void brcms_c_tbtt(struct brcms_c_info *wlc)
{
 if (wlc->bsscfg->type == BRCMS_TYPE_ADHOC)




  wlc->qvalid |= MCMD_DIRFRMQVAL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* pf; } ;
struct TYPE_2__ {int mip; } ;


 char const* nfp_mip_name (int ) ;

const char *nfp_app_mip_name(struct nfp_app *app)
{
 if (!app || !app->pf->mip)
  return "";
 return nfp_mip_name(app->pf->mip);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int dummy; } ;
struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {char const* (* extra_cap ) (struct nfp_app*,struct nfp_net*) ;} ;


 char const* stub1 (struct nfp_app*,struct nfp_net*) ;

__attribute__((used)) static inline const char *nfp_app_extra_cap(struct nfp_app *app,
         struct nfp_net *nn)
{
 if (!app || !app->type->extra_cap)
  return "";
 return app->type->extra_cap(app, nn);
}

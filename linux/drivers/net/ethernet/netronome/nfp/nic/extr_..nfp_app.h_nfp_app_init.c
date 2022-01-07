
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {int (* init ) (struct nfp_app*) ;} ;


 int stub1 (struct nfp_app*) ;

__attribute__((used)) static inline int nfp_app_init(struct nfp_app *app)
{
 if (!app->type->init)
  return 0;
 return app->type->init(app);
}

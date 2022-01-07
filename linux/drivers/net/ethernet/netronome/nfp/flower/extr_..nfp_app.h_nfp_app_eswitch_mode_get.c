
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {int (* eswitch_mode_get ) (struct nfp_app*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct nfp_app*) ;

__attribute__((used)) static inline int nfp_app_eswitch_mode_get(struct nfp_app *app, u16 *mode)
{
 if (!app->type->eswitch_mode_get)
  return -EOPNOTSUPP;

 *mode = app->type->eswitch_mode_get(app);

 return 0;
}

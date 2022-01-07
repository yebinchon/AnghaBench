
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ setup_tc; } ;



__attribute__((used)) static inline bool nfp_app_has_tc(struct nfp_app *app)
{
 return app && app->type->setup_tc;
}

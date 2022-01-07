
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_app {TYPE_1__* type; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static inline const char *nfp_app_name(struct nfp_app *app)
{
 if (!app)
  return "";
 return app->type->name;
}

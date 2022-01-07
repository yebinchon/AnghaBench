
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct twl_client {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_4__ {struct twl_client* twl_modules; TYPE_1__* twl_map; int ready; } ;
struct TYPE_3__ {int sid; } ;


 int DRIVER_NAME ;
 int pr_err (char*,int ,...) ;
 size_t twl_get_last_module () ;
 TYPE_2__* twl_priv ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct regmap *twl_get_regmap(u8 mod_no)
{
 int sid;
 struct twl_client *twl;

 if (unlikely(!twl_priv || !twl_priv->ready)) {
  pr_err("%s: not initialized\n", DRIVER_NAME);
  return ((void*)0);
 }
 if (unlikely(mod_no >= twl_get_last_module())) {
  pr_err("%s: invalid module number %d\n", DRIVER_NAME, mod_no);
  return ((void*)0);
 }

 sid = twl_priv->twl_map[mod_no].sid;
 twl = &twl_priv->twl_modules[sid];

 return twl->regmap;
}

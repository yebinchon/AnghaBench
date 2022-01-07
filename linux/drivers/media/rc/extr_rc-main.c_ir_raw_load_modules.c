
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int type; int name; int module_name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int RC_PROTO_BIT_NONE ;
 int RC_PROTO_BIT_OTHER ;
 int RC_PROTO_BIT_UNKNOWN ;
 int ir_raw_get_allowed_protocols () ;
 int msleep (int) ;
 int pr_err (char*,int ,...) ;
 TYPE_1__* proto_names ;
 int request_module (char*,int ) ;

void ir_raw_load_modules(u64 *protocols)
{
 u64 available;
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(proto_names); i++) {
  if (proto_names[i].type == RC_PROTO_BIT_NONE ||
      proto_names[i].type & (RC_PROTO_BIT_OTHER |
        RC_PROTO_BIT_UNKNOWN))
   continue;

  available = ir_raw_get_allowed_protocols();
  if (!(*protocols & proto_names[i].type & ~available))
   continue;

  if (!proto_names[i].module_name) {
   pr_err("Can't enable IR protocol %s\n",
          proto_names[i].name);
   *protocols &= ~proto_names[i].type;
   continue;
  }

  ret = request_module("%s", proto_names[i].module_name);
  if (ret < 0) {
   pr_err("Couldn't load IR protocol module %s\n",
          proto_names[i].module_name);
   *protocols &= ~proto_names[i].type;
   continue;
  }
  msleep(20);
  available = ir_raw_get_allowed_protocols();
  if (!(*protocols & proto_names[i].type & ~available))
   continue;

  pr_err("Loaded IR protocol module %s, but protocol %s still not available\n",
         proto_names[i].module_name,
         proto_names[i].name);
  *protocols &= ~proto_names[i].type;
 }
}

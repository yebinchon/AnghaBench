
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nr; struct e1000_opt_list* p; } ;
struct TYPE_5__ {unsigned int min; unsigned int max; } ;
struct TYPE_7__ {TYPE_2__ l; TYPE_1__ r; } ;
struct e1000_option {unsigned int def; int type; int err; int name; TYPE_3__ arg; } ;
struct e1000_opt_list {unsigned int i; char* str; } ;
struct e1000_adapter {TYPE_4__* pdev; } ;
struct TYPE_8__ {int dev; } ;


 int BUG () ;


 unsigned int OPTION_UNSET ;
 int dev_info (int *,char*,char*,...) ;




__attribute__((used)) static int e1000_validate_option(unsigned int *value,
     const struct e1000_option *opt,
     struct e1000_adapter *adapter)
{
 if (*value == OPTION_UNSET) {
  *value = opt->def;
  return 0;
 }

 switch (opt->type) {
 case 130:
  switch (*value) {
  case 131:
   dev_info(&adapter->pdev->dev, "%s Enabled\n",
     opt->name);
   return 0;
  case 132:
   dev_info(&adapter->pdev->dev, "%s Disabled\n",
     opt->name);
   return 0;
  }
  break;
 case 128:
  if (*value >= opt->arg.r.min && *value <= opt->arg.r.max) {
   dev_info(&adapter->pdev->dev, "%s set to %i\n",
     opt->name, *value);
   return 0;
  }
  break;
 case 129: {
  int i;
  struct e1000_opt_list *ent;

  for (i = 0; i < opt->arg.l.nr; i++) {
   ent = &opt->arg.l.p[i];
   if (*value == ent->i) {
    if (ent->str[0] != '\0')
     dev_info(&adapter->pdev->dev, "%s\n",
       ent->str);
    return 0;
   }
  }
 }
  break;
 default:
  BUG();
 }

 dev_info(&adapter->pdev->dev, "Invalid %s value specified (%i) %s\n",
   opt->name, *value, opt->err);
 *value = opt->def;
 return -1;
}

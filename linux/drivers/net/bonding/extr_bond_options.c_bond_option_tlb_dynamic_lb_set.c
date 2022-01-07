
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlb_dynamic_lb; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; int string; } ;


 int netdev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static int bond_option_tlb_dynamic_lb_set(struct bonding *bond,
       const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting dynamic-lb to %s (%llu)\n",
     newval->string, newval->value);
 bond->params.tlb_dynamic_lb = newval->value;

 return 0;
}

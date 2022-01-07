
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int miimon; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; } ;


 int EPERM ;
 int netdev_dbg (int ,char*,char const*,int) ;
 int netdev_err (int ,char*,char const*) ;
 int netdev_warn (int ,char*,char const*,int,int,int) ;

__attribute__((used)) static int _bond_option_delay_set(struct bonding *bond,
      const struct bond_opt_value *newval,
      const char *name,
      int *target)
{
 int value = newval->value;

 if (!bond->params.miimon) {
  netdev_err(bond->dev, "Unable to set %s as MII monitoring is disabled\n",
      name);
  return -EPERM;
 }
 if ((value % bond->params.miimon) != 0) {
  netdev_warn(bond->dev,
       "%s (%d) is not a multiple of miimon (%d), value rounded to %d ms\n",
       name,
       value, bond->params.miimon,
       (value / bond->params.miimon) *
       bond->params.miimon);
 }
 *target = value / bond->params.miimon;
 netdev_dbg(bond->dev, "Setting %s to %d\n",
     name,
     *target * bond->params.miimon);

 return 0;
}

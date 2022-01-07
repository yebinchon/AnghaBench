
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bond_params {int mode; } ;
struct bonding {TYPE_1__* dev; struct bond_params params; } ;
struct bond_option {int flags; int unsuppmodes; } ;
struct TYPE_2__ {int flags; } ;


 int BOND_OPTFLAG_IFDOWN ;
 int BOND_OPTFLAG_NOSLAVES ;
 int EACCES ;
 int EBUSY ;
 int ENOTEMPTY ;
 int IFF_UP ;
 scalar_t__ bond_has_slaves (struct bonding*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bond_opt_check_deps(struct bonding *bond,
          const struct bond_option *opt)
{
 struct bond_params *params = &bond->params;

 if (test_bit(params->mode, &opt->unsuppmodes))
  return -EACCES;
 if ((opt->flags & BOND_OPTFLAG_NOSLAVES) && bond_has_slaves(bond))
  return -ENOTEMPTY;
 if ((opt->flags & BOND_OPTFLAG_IFDOWN) && (bond->dev->flags & IFF_UP))
  return -EBUSY;

 return 0;
}

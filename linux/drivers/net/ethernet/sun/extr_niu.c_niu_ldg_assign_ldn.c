
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu_parent {int* ldg_map; } ;
struct niu {int port; int device; TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ plat_type; } ;


 int EINVAL ;
 int LDG_NUM (int) ;
 int LDN_MAX ;
 int NIU_LDG_MAX ;
 int NIU_LDG_MIN ;
 scalar_t__ PLAT_TYPE_NIU ;
 int dev_err (int ,char*,int ,int,int,unsigned long long) ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_ldg_assign_ldn(struct niu *np, struct niu_parent *parent,
         int ldg, int ldn)
{
 if (ldg < NIU_LDG_MIN || ldg > NIU_LDG_MAX)
  return -EINVAL;
 if (ldn < 0 || ldn > LDN_MAX)
  return -EINVAL;

 parent->ldg_map[ldn] = ldg;

 if (np->parent->plat_type == PLAT_TYPE_NIU) {





  if (nr64(LDG_NUM(ldn)) != ldg) {
   dev_err(np->device, "Port %u, mis-matched LDG assignment for ldn %d, should be %d is %llu\n",
    np->port, ldn, ldg,
    (unsigned long long) nr64(LDG_NUM(ldn)));
   return -EINVAL;
  }
 } else
  nw64(LDG_NUM(ldn), ldg);

 return 0;
}

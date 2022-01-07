
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vlan; } ;
struct bnxt {TYPE_1__ vf; } ;


 scalar_t__ BNXT_VF (struct bnxt*) ;

__attribute__((used)) static bool bnxt_promisc_ok(struct bnxt *bp)
{




 return 1;
}

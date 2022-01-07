
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * a; } ;
struct TYPE_4__ {TYPE_1__ fddi_phys_addr; } ;
struct s_smc {TYPE_2__ hw; } ;
struct fddi_addr {int * a; } ;


 int bitrev8 (int ) ;

void driver_get_bia(struct s_smc *smc, struct fddi_addr *bia_addr)
{
 int i ;

 for (i = 0 ; i < 6 ; i++)
  bia_addr->a[i] = bitrev8(smc->hw.fddi_phys_addr.a[i]);
}

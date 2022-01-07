
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 scalar_t__ PL_VF_WHOAMI_A ;
 unsigned int SOURCEPF_G (int ) ;
 scalar_t__ T4VF_PL_BASE_ADDR ;
 unsigned int T6_SOURCEPF_G (int ) ;
 int t4_read_reg (struct adapter*,scalar_t__) ;

unsigned int t4vf_get_pf_from_vf(struct adapter *adapter)
{
 u32 whoami;

 whoami = t4_read_reg(adapter, T4VF_PL_BASE_ADDR + PL_VF_WHOAMI_A);
 return (CHELSIO_CHIP_VERSION(adapter->params.chip) <= CHELSIO_T5 ?
   SOURCEPF_G(whoami) : T6_SOURCEPF_G(whoami));
}

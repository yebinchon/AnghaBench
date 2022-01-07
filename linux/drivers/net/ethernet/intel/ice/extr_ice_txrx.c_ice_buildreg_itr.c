
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int GLINT_DYN_CTL_CLEARPBA_M ;
 int GLINT_DYN_CTL_INTENA_M ;
 int GLINT_DYN_CTL_INTERVAL_S ;
 int GLINT_DYN_CTL_ITR_INDX_S ;
 int ICE_ITR_GRAN_S ;
 int ICE_ITR_MASK ;

__attribute__((used)) static u32 ice_buildreg_itr(u16 itr_idx, u16 itr)
{







 itr &= ICE_ITR_MASK;

 return GLINT_DYN_CTL_INTENA_M | GLINT_DYN_CTL_CLEARPBA_M |
  (itr_idx << GLINT_DYN_CTL_ITR_INDX_S) |
  (itr << (GLINT_DYN_CTL_INTERVAL_S - ICE_ITR_GRAN_S));
}

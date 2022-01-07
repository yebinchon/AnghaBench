
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int I40E_ITR_MASK ;
 int const I40E_PFINT_DYN_CTLN_INTENA_MASK ;
 int I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT ;
 int const I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT ;

__attribute__((used)) static inline u32 i40e_buildreg_itr(const int type, u16 itr)
{
 u32 val;
 itr &= I40E_ITR_MASK;

 val = I40E_PFINT_DYN_CTLN_INTENA_MASK |
       (type << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT) |
       (itr << (I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT - 1));

 return val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int IAVF_ITR_MASK ;
 int const IAVF_VFINT_DYN_CTLN1_INTENA_MASK ;
 int IAVF_VFINT_DYN_CTLN1_INTERVAL_SHIFT ;
 int const IAVF_VFINT_DYN_CTLN1_ITR_INDX_SHIFT ;

__attribute__((used)) static inline u32 iavf_buildreg_itr(const int type, u16 itr)
{
 u32 val;
 itr &= IAVF_ITR_MASK;

 val = IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
       (type << IAVF_VFINT_DYN_CTLN1_ITR_INDX_SHIFT) |
       (itr << (IAVF_VFINT_DYN_CTLN1_INTERVAL_SHIFT - 1));

 return val;
}

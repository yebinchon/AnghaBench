
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int RVU_PFVF_PF_MASK ;
 int RVU_PFVF_PF_SHIFT ;

inline int rvu_get_pf(u16 pcifunc)
{
 return (pcifunc >> RVU_PFVF_PF_SHIFT) & RVU_PFVF_PF_MASK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int RVU_PFVF_FUNC_MASK ;

__attribute__((used)) static inline int is_afvf(u16 pcifunc)
{
 return !(pcifunc & ~RVU_PFVF_FUNC_MASK);
}

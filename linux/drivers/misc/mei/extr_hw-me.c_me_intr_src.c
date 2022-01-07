
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int H_CSR_IS_MASK ;

__attribute__((used)) static inline u32 me_intr_src(u32 hcsr)
{
 return hcsr & H_CSR_IS_MASK;
}

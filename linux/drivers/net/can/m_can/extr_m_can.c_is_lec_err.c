
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LEC_UNUSED ;

__attribute__((used)) static inline bool is_lec_err(u32 psr)
{
 psr &= LEC_UNUSED;

 return psr && (psr != LEC_UNUSED);
}

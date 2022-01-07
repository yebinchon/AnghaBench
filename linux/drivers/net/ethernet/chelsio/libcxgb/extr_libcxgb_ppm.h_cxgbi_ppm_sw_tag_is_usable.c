
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbi_ppm {int dummy; } ;



__attribute__((used)) static inline int cxgbi_ppm_sw_tag_is_usable(struct cxgbi_ppm *ppm,
          u32 tag)
{

 return !(tag & 0x80000000U);
}

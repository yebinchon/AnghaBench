
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int no_ddp_mask; } ;
struct cxgbi_ppm {TYPE_1__ tformat; } ;



__attribute__((used)) static inline int cxgbi_ppm_is_ddp_tag(struct cxgbi_ppm *ppm, u32 tag)
{
 return !(tag & ppm->tformat.no_ddp_mask);
}

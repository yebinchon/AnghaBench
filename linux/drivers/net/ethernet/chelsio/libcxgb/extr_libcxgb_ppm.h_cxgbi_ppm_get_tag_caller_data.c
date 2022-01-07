
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct cxgbi_ppm {TYPE_1__* ppod_data; } ;
struct TYPE_2__ {unsigned long caller_data; } ;


 size_t cxgbi_ppm_ddp_tag_get_idx (struct cxgbi_ppm*,size_t) ;

__attribute__((used)) static inline unsigned long
cxgbi_ppm_get_tag_caller_data(struct cxgbi_ppm *ppm,
         u32 ddp_tag)
{
 u32 idx = cxgbi_ppm_ddp_tag_get_idx(ppm, ddp_tag);

 return ppm->ppod_data[idx].caller_data;
}

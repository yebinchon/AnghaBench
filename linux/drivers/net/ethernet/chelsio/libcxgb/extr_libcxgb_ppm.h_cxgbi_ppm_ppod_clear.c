
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int vld_tid; } ;
struct cxgbi_pagepod {TYPE_1__ hdr; } ;



__attribute__((used)) static inline void cxgbi_ppm_ppod_clear(struct cxgbi_pagepod *ppod)
{
 ppod->hdr.vld_tid = 0U;
}

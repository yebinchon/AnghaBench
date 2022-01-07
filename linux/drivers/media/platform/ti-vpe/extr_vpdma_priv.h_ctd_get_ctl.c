
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_ctd {int type_source_ctl; } ;


 int CTD_CONTROL_MASK ;

__attribute__((used)) static inline int ctd_get_ctl(struct vpdma_ctd *ctd)
{
 return ctd->type_source_ctl & CTD_CONTROL_MASK;
}

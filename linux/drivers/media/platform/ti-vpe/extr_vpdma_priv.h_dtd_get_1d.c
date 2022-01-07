
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int type_ctl_stride; } ;


 int DTD_1D_MASK ;
 int DTD_1D_SHFT ;

__attribute__((used)) static inline bool dtd_get_1d(struct vpdma_dtd *dtd)
{
 return (dtd->type_ctl_stride >> DTD_1D_SHFT) & DTD_1D_MASK;
}

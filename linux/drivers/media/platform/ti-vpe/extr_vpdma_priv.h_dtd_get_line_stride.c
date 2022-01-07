
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int type_ctl_stride; } ;


 int DTD_LINE_STRIDE_MASK ;

__attribute__((used)) static inline int dtd_get_line_stride(struct vpdma_dtd *dtd)
{
 return dtd->type_ctl_stride & DTD_LINE_STRIDE_MASK;
}

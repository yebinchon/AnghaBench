
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int type_ctl_stride; } ;


 int DTD_ODD_LINE_SKIP_MASK ;
 int DTD_ODD_LINE_SKIP_SHFT ;

__attribute__((used)) static inline bool dtd_get_odd_line_skip(struct vpdma_dtd *dtd)
{
 return (dtd->type_ctl_stride >> DTD_ODD_LINE_SKIP_SHFT)
  & DTD_ODD_LINE_SKIP_MASK;
}

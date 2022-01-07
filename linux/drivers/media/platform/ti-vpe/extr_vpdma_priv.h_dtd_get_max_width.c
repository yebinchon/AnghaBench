
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int max_width_height; } ;


 int DTD_MAX_WIDTH_MASK ;
 int DTD_MAX_WIDTH_SHFT ;

__attribute__((used)) static inline int dtd_get_max_width(struct vpdma_dtd *dtd)
{
 return (dtd->max_width_height >> DTD_MAX_WIDTH_SHFT) &
       DTD_MAX_WIDTH_MASK;
}

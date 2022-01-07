
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_ctd {int pixel_line_count; } ;


 int CTD_LINE_COUNT_MASK ;

__attribute__((used)) static inline int ctd_get_line_count(struct vpdma_ctd *ctd)
{
 return ctd->pixel_line_count & CTD_LINE_COUNT_MASK;
}

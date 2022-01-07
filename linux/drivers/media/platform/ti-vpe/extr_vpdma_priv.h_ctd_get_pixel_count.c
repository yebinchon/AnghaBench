
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpdma_ctd {int pixel_line_count; } ;


 int CTD_PIXEL_COUNT_SHFT ;

__attribute__((used)) static inline u32 ctd_get_pixel_count(struct vpdma_ctd *ctd)
{
 return ctd->pixel_line_count >> CTD_PIXEL_COUNT_SHFT;
}

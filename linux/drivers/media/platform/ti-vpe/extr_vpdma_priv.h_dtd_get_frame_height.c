
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int frame_width_height; } ;


 int DTD_FRAME_HEIGHT_MASK ;

__attribute__((used)) static inline int dtd_get_frame_height(struct vpdma_dtd *dtd)
{
 return dtd->frame_width_height & DTD_FRAME_HEIGHT_MASK;
}

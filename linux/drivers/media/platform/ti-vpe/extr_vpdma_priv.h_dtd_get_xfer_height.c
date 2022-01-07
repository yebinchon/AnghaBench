
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int xfer_length_height; } ;


 int DTD_XFER_HEIGHT_MASK ;

__attribute__((used)) static inline int dtd_get_xfer_height(struct vpdma_dtd *dtd)
{
 return dtd->xfer_length_height & DTD_XFER_HEIGHT_MASK;
}

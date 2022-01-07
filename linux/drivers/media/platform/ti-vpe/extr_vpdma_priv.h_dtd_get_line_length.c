
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int xfer_length_height; } ;


 int DTD_LINE_LENGTH_SHFT ;

__attribute__((used)) static inline int dtd_get_line_length(struct vpdma_dtd *dtd)
{
 return dtd->xfer_length_height >> DTD_LINE_LENGTH_SHFT;
}

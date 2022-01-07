
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int desc_write_addr; } ;


 int DTD_WRITE_DESC_MASK ;
 int DTD_WRITE_DESC_SHIFT ;

__attribute__((used)) static inline bool dtd_get_write_desc(struct vpdma_dtd *dtd)
{
 return (dtd->desc_write_addr >> DTD_WRITE_DESC_SHIFT) &
       DTD_WRITE_DESC_MASK;
}

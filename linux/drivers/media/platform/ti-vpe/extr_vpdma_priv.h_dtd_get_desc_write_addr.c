
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int desc_write_addr; } ;


 int DTD_DESC_START_MASK ;

__attribute__((used)) static inline int dtd_get_desc_write_addr(struct vpdma_dtd *dtd)
{
 return dtd->desc_write_addr & DTD_DESC_START_MASK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int desc_write_addr; } ;


 int DTD_DROP_DATA_MASK ;
 int DTD_DROP_DATA_SHIFT ;

__attribute__((used)) static inline bool dtd_get_drop_data(struct vpdma_dtd *dtd)
{
 return (dtd->desc_write_addr >> DTD_DROP_DATA_SHIFT) &
       DTD_DROP_DATA_MASK;
}

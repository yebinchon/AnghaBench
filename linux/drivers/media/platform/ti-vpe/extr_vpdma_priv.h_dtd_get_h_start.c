
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int start_h_v; } ;


 int DTD_H_START_SHFT ;

__attribute__((used)) static inline int dtd_get_h_start(struct vpdma_dtd *dtd)
{
 return dtd->start_h_v >> DTD_H_START_SHFT;
}

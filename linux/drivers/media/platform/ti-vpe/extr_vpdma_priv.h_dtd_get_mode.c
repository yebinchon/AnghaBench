
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int pkt_ctl; } ;


 int DTD_MODE_MASK ;
 int DTD_MODE_SHFT ;

__attribute__((used)) static inline bool dtd_get_mode(struct vpdma_dtd *dtd)
{
 return (dtd->pkt_ctl >> DTD_MODE_SHFT) & DTD_MODE_MASK;
}

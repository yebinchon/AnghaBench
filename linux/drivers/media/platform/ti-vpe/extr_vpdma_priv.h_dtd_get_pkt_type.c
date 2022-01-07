
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int pkt_ctl; } ;


 int DTD_PKT_TYPE_SHFT ;

__attribute__((used)) static inline int dtd_get_pkt_type(struct vpdma_dtd *dtd)
{
 return dtd->pkt_ctl >> DTD_PKT_TYPE_SHFT;
}

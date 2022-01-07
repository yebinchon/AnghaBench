
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_dtd {int pkt_ctl; } ;


 int DTD_DIR_MASK ;
 int DTD_DIR_SHFT ;

__attribute__((used)) static inline bool dtd_get_dir(struct vpdma_dtd *dtd)
{
 return (dtd->pkt_ctl >> DTD_DIR_SHFT) & DTD_DIR_MASK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_ctd {int event; } ;


 int CTD_EVENT_MASK ;

__attribute__((used)) static inline int ctd_get_event(struct vpdma_ctd *ctd)
{
 return ctd->event & CTD_EVENT_MASK;
}

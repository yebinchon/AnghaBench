
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_ctd {int fid_ctl; } ;


 int CTD_FID1_MASK ;
 int CTD_FID1_SHFT ;

__attribute__((used)) static inline int ctd_get_fid1_ctl(struct vpdma_ctd *ctd)
{
 return (ctd->fid_ctl >> CTD_FID1_SHFT) & CTD_FID1_MASK;
}

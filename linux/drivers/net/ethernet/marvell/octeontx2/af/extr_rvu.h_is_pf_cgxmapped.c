
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rvu {scalar_t__ cgx_mapped_pfs; } ;


 scalar_t__ PF_CGXMAP_BASE ;

__attribute__((used)) static inline bool is_pf_cgxmapped(struct rvu *rvu, u8 pf)
{
 return (pf >= PF_CGXMAP_BASE && pf <= rvu->cgx_mapped_pfs);
}

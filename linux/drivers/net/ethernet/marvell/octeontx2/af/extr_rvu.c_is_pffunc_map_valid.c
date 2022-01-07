
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvu_pfvf {int dummy; } ;
struct rvu {int dummy; } ;


 int is_pf_func_valid (struct rvu*,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;
 int rvu_get_rsrc_mapcount (struct rvu_pfvf*,int) ;

bool is_pffunc_map_valid(struct rvu *rvu, u16 pcifunc, int blktype)
{
 struct rvu_pfvf *pfvf;

 if (!is_pf_func_valid(rvu, pcifunc))
  return 0;

 pfvf = rvu_get_pfvf(rvu, pcifunc);


 if (!rvu_get_rsrc_mapcount(pfvf, blktype))
  return 0;

 return 1;
}

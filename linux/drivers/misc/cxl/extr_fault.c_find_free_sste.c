
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_sste {int esid_data; } ;
struct cxl_context {int sst_size; int sst_lru; struct cxl_sste* sstp; } ;
struct copro_slb {int vsid; unsigned int esid; } ;


 unsigned int SID_SHIFT ;
 unsigned int SID_SHIFT_1T ;
 int SLB_ESID_V ;
 int SLB_VSID_B_1T ;
 int be64_to_cpu (int ) ;
 scalar_t__ sste_matches (struct cxl_sste*,struct copro_slb*) ;

__attribute__((used)) static struct cxl_sste *find_free_sste(struct cxl_context *ctx,
           struct copro_slb *slb)
{
 struct cxl_sste *primary, *sste, *ret = ((void*)0);
 unsigned int mask = (ctx->sst_size >> 7) - 1;
 unsigned int entry;
 unsigned int hash;

 if (slb->vsid & SLB_VSID_B_1T)
  hash = (slb->esid >> SID_SHIFT_1T) & mask;
 else
  hash = (slb->esid >> SID_SHIFT) & mask;

 primary = ctx->sstp + (hash << 3);

 for (entry = 0, sste = primary; entry < 8; entry++, sste++) {
  if (!ret && !(be64_to_cpu(sste->esid_data) & SLB_ESID_V))
   ret = sste;
  if (sste_matches(sste, slb))
   return ((void*)0);
 }
 if (ret)
  return ret;


 ret = primary + ctx->sst_lru;
 ctx->sst_lru = (ctx->sst_lru + 1) & 0x7;

 return ret;
}

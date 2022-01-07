
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct cudbg_region_info {int exist; int end; int start; } ;
struct cudbg_meminfo {int avail; } ;
struct cudbg_mem_desc {int limit; int base; } ;
struct adapter {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 size_t CTXT_CNM ;
 scalar_t__ CTXT_EGRESS ;
 size_t CTXT_FLM ;
 scalar_t__ CTXT_INGRESS ;
 int CUDBG_MAX_FL_QIDS ;
 int HDRSTARTFLQ_G (scalar_t__) ;
 int SGE_CTXT_SIZE ;
 int SGE_FLM_CFG_A ;
 int cudbg_fill_meminfo (struct adapter*,struct cudbg_meminfo*) ;
 int cudbg_get_mem_region (struct adapter*,struct cudbg_meminfo*,scalar_t__,int ,struct cudbg_mem_desc*) ;
 int cudbg_get_mem_relative (struct adapter*,struct cudbg_meminfo*,scalar_t__,int *,int*) ;
 int * cudbg_region ;
 int memset (struct cudbg_mem_desc*,int ,int) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int cudbg_get_ctxt_region_info(struct adapter *padap,
          struct cudbg_region_info *ctx_info,
          u8 *mem_type)
{
 struct cudbg_mem_desc mem_desc;
 struct cudbg_meminfo meminfo;
 u32 i, j, value, found;
 u8 flq;
 int rc;

 rc = cudbg_fill_meminfo(padap, &meminfo);
 if (rc)
  return rc;


 for (i = CTXT_EGRESS; i <= CTXT_INGRESS; i++) {
  found = 0;
  memset(&mem_desc, 0, sizeof(struct cudbg_mem_desc));
  for (j = 0; j < ARRAY_SIZE(meminfo.avail); j++) {
   rc = cudbg_get_mem_region(padap, &meminfo, j,
        cudbg_region[i],
        &mem_desc);
   if (!rc) {
    found = 1;
    rc = cudbg_get_mem_relative(padap, &meminfo, j,
           &mem_desc.base,
           &mem_desc.limit);
    if (rc) {
     ctx_info[i].exist = 0;
     break;
    }
    ctx_info[i].exist = 1;
    ctx_info[i].start = mem_desc.base;
    ctx_info[i].end = mem_desc.limit;
    mem_type[i] = j;
    break;
   }
  }
  if (!found)
   ctx_info[i].exist = 0;
 }


 value = t4_read_reg(padap, SGE_FLM_CFG_A);


 flq = HDRSTARTFLQ_G(value);
 ctx_info[CTXT_FLM].exist = 1;
 ctx_info[CTXT_FLM].end = (CUDBG_MAX_FL_QIDS >> flq) * SGE_CTXT_SIZE;




 ctx_info[CTXT_CNM].exist = 1;
 ctx_info[CTXT_CNM].end = ctx_info[CTXT_FLM].end;

 return 0;
}

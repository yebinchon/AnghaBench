
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cudbg_region_info {int exist; int end; int start; } ;
struct cudbg_meminfo {int dummy; } ;
struct cudbg_mem_desc {int limit; int base; int member_0; } ;
struct adapter {int dummy; } ;


 int cudbg_fill_meminfo (struct adapter*,struct cudbg_meminfo*) ;
 int cudbg_get_mem_region (struct adapter*,struct cudbg_meminfo*,int ,char const*,struct cudbg_mem_desc*) ;
 int cudbg_get_mem_relative (struct adapter*,struct cudbg_meminfo*,int ,int *,int *) ;

__attribute__((used)) static int cudbg_get_payload_range(struct adapter *padap, u8 mem_type,
       const char *region_name,
       struct cudbg_region_info *payload)
{
 struct cudbg_mem_desc mem_desc = { 0 };
 struct cudbg_meminfo meminfo;
 int rc;

 rc = cudbg_fill_meminfo(padap, &meminfo);
 if (rc)
  return rc;

 rc = cudbg_get_mem_region(padap, &meminfo, mem_type, region_name,
      &mem_desc);
 if (rc) {
  payload->exist = 0;
  return 0;
 }

 payload->exist = 1;
 payload->start = mem_desc.base;
 payload->end = mem_desc.limit;

 return cudbg_get_mem_relative(padap, &meminfo, mem_type,
          &payload->start, &payload->end);
}

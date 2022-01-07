
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cxgbi_ppod_data {int npods; } ;
struct cxgbi_ppm {scalar_t__ ppmax; struct cxgbi_ppod_data* ppod_data; } ;


 int ppm_unmark_entries (struct cxgbi_ppm*,scalar_t__,int ) ;
 int pr_debug (char*,scalar_t__,int ) ;
 int pr_warn (char*,scalar_t__,...) ;

void cxgbi_ppm_ppod_release(struct cxgbi_ppm *ppm, u32 idx)
{
 struct cxgbi_ppod_data *pdata;

 if (idx >= ppm->ppmax) {
  pr_warn("ippm: idx too big %u > %u.\n", idx, ppm->ppmax);
  return;
 }

 pdata = ppm->ppod_data + idx;
 if (!pdata->npods) {
  pr_warn("ippm: idx %u, npods 0.\n", idx);
  return;
 }

 pr_debug("release idx %u, npods %u.\n", idx, pdata->npods);
 ppm_unmark_entries(ppm, idx, pdata->npods);
}

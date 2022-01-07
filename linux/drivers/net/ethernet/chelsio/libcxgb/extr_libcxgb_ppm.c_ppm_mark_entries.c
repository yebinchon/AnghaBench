
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_ppod_data {unsigned long caller_data; int npods; int color; } ;
struct cxgbi_ppm {struct cxgbi_ppod_data* ppod_data; } ;


 int PPOD_IDX_SHIFT ;

__attribute__((used)) static void ppm_mark_entries(struct cxgbi_ppm *ppm, int i, int count,
        unsigned long caller_data)
{
 struct cxgbi_ppod_data *pdata = ppm->ppod_data + i;

 pdata->caller_data = caller_data;
 pdata->npods = count;

 if (pdata->color == ((1 << PPOD_IDX_SHIFT) - 1))
  pdata->color = 0;
 else
  pdata->color++;
}

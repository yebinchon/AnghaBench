
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ccdc_vertical_dft {int* dft_corr_vert; int* dft_corr_horz; int* dft_corr_sub1; int* dft_corr_sub2; int* dft_corr_sub3; } ;
struct TYPE_2__ {int dev; } ;


 int CCDC_DFCMEMCTL_DFCMWR_MASK ;
 int DFCMEM0 ;
 int DFCMEM1 ;
 int DFCMEM2 ;
 int DFCMEM3 ;
 int DFCMEM4 ;
 int DFCMEMCTL ;
 int DFC_WRITE_WAIT_COUNT ;
 TYPE_1__ ccdc_cfg ;
 int dev_err (int ,char*) ;
 int regr (int ) ;
 int regw (int,int ) ;

__attribute__((used)) static int ccdc_write_dfc_entry(int index, struct ccdc_vertical_dft *dfc)
{


 u32 val, count = 1000;

 regw(dfc->dft_corr_vert[index], DFCMEM0);
 regw(dfc->dft_corr_horz[index], DFCMEM1);
 regw(dfc->dft_corr_sub1[index], DFCMEM2);
 regw(dfc->dft_corr_sub2[index], DFCMEM3);
 regw(dfc->dft_corr_sub3[index], DFCMEM4);

 val = regr(DFCMEMCTL) | CCDC_DFCMEMCTL_DFCMWR_MASK;
 regw(val, DFCMEMCTL);





 while (regr(DFCMEMCTL) & CCDC_DFCMEMCTL_DFCMWR_MASK)
  count--;





 if (count) {
  dev_err(ccdc_cfg.dev, "defect table write timeout !!!\n");
  return -1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int model; } ;
struct niu {TYPE_1__ vpd; } ;


 int NIU_2XGF_LP_MDL_STR ;
 int NIU_2XGF_MRVL_MDL_STR ;
 int NIU_2XGF_PEM_MDL_STR ;
 int NIU_ALONSO_MDL_STR ;
 int NIU_FOXXY_MDL_STR ;
 int NIU_KIMI_MDL_STR ;
 int NIU_MARAMBA_MDL_STR ;
 int NIU_QGC_LP_MDL_STR ;
 int NIU_QGC_PEM_MDL_STR ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int niu_pci_vpd_get_nports(struct niu *np)
{
 int ports = 0;

 if ((!strcmp(np->vpd.model, NIU_QGC_LP_MDL_STR)) ||
     (!strcmp(np->vpd.model, NIU_QGC_PEM_MDL_STR)) ||
     (!strcmp(np->vpd.model, NIU_MARAMBA_MDL_STR)) ||
     (!strcmp(np->vpd.model, NIU_KIMI_MDL_STR)) ||
     (!strcmp(np->vpd.model, NIU_ALONSO_MDL_STR))) {
  ports = 4;
 } else if ((!strcmp(np->vpd.model, NIU_2XGF_LP_MDL_STR)) ||
     (!strcmp(np->vpd.model, NIU_2XGF_PEM_MDL_STR)) ||
     (!strcmp(np->vpd.model, NIU_FOXXY_MDL_STR)) ||
     (!strcmp(np->vpd.model, NIU_2XGF_MRVL_MDL_STR))) {
  ports = 2;
 }

 return ports;
}

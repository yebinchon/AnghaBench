
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isif_cul {int hcpat_even; int hcpat_odd; int vcpat; int en_lpf; } ;


 int CULH ;
 int CULL_PAT_EVEN_LINE_SHIFT ;
 int CULV ;
 int ISIF_LPF_MASK ;
 int ISIF_LPF_SHIFT ;
 int MODESET ;
 int reg_modify (int,int,int ) ;
 int regw (int,int ) ;

__attribute__((used)) static void isif_config_culling(struct isif_cul *cul)
{
 u32 val;


 val = (cul->hcpat_even << CULL_PAT_EVEN_LINE_SHIFT) | cul->hcpat_odd;
 regw(val, CULH);


 regw(cul->vcpat, CULV);


 reg_modify(ISIF_LPF_MASK << ISIF_LPF_SHIFT,
    cul->en_lpf << ISIF_LPF_SHIFT, MODESET);
}

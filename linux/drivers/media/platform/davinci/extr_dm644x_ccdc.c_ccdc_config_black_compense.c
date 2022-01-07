
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccdc_black_compensation {int b; int gb; int gr; int r; } ;


 int CCDC_BLKCMP ;
 int CCDC_BLK_COMP_GB_COMP_SHIFT ;
 int CCDC_BLK_COMP_GR_COMP_SHIFT ;
 int CCDC_BLK_COMP_MASK ;
 int CCDC_BLK_COMP_R_COMP_SHIFT ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_config_black_compense(struct ccdc_black_compensation *bcomp)
{
 u32 val;

 val = ((bcomp->b & CCDC_BLK_COMP_MASK) |
       ((bcomp->gb & CCDC_BLK_COMP_MASK) <<
        CCDC_BLK_COMP_GB_COMP_SHIFT) |
       ((bcomp->gr & CCDC_BLK_COMP_MASK) <<
        CCDC_BLK_COMP_GR_COMP_SHIFT) |
       ((bcomp->r & CCDC_BLK_COMP_MASK) <<
        CCDC_BLK_COMP_R_COMP_SHIFT));
 regw(val, CCDC_BLKCMP);
}

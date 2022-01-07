
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccdc_col_pat {int olop; int olep; int elop; int elep; } ;


 int COLPTN ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_config_color_patterns(struct ccdc_col_pat *pat0,
           struct ccdc_col_pat *pat1)
{
 u32 val;

 val = (pat0->olop | (pat0->olep << 2) | (pat0->elop << 4) |
  (pat0->elep << 6) | (pat1->olop << 8) | (pat1->olep << 10) |
  (pat1->elop << 12) | (pat1->elep << 14));
 regw(val, COLPTN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISIF_SYNCEN_WEN_MASK ;
 int ISIF_SYNCEN_WEN_SHIFT ;
 int SYNCEN ;
 int reg_modify (int ,int,int ) ;

__attribute__((used)) static void isif_enable_output_to_sdram(int en)
{
 reg_modify(ISIF_SYNCEN_WEN_MASK, en << ISIF_SYNCEN_WEN_SHIFT, SYNCEN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISIF_SYNCEN_VDHDEN_MASK ;
 int SYNCEN ;
 int isif_disable_all_modules () ;
 int msleep (int) ;
 int reg_modify (int ,int,int ) ;

__attribute__((used)) static void isif_enable(int en)
{
 if (!en) {

  isif_disable_all_modules();




  msleep(100);
 }
 reg_modify(ISIF_SYNCEN_VDHDEN_MASK, en, SYNCEN);
}

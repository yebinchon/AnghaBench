
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int dummy; } ;


 int r8153_aldps_en (struct r8152*,int) ;
 int rtl_disable (struct r8152*) ;
 int rtl_reset_bmu (struct r8152*) ;

__attribute__((used)) static void rtl8153_disable(struct r8152 *tp)
{
 r8153_aldps_en(tp, 0);
 rtl_disable(tp);
 rtl_reset_bmu(tp);
 r8153_aldps_en(tp, 1);
}

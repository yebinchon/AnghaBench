
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int dummy; } ;


 int r8152_aldps_en (struct r8152*,int) ;
 int rtl_disable (struct r8152*) ;

__attribute__((used)) static void rtl8152_disable(struct r8152 *tp)
{
 r8152_aldps_en(tp, 0);
 rtl_disable(tp);
 r8152_aldps_en(tp, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; } ;


 int RTL8152_UNPLUG ;
 int r8152_aldps_en (struct r8152*,int) ;
 int r8152b_exit_oob (struct r8152*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rtl8152_up(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 r8152_aldps_en(tp, 0);
 r8152b_exit_oob(tp);
 r8152_aldps_en(tp, 1);
}

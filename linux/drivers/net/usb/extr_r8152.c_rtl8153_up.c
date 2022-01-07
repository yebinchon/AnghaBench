
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int version; int flags; } ;


 int RTL8152_UNPLUG ;




 int r8153_aldps_en (struct r8152*,int) ;
 int r8153_first_init (struct r8152*) ;
 int r8153_u1u2en (struct r8152*,int) ;
 int r8153_u2p3en (struct r8152*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rtl8153_up(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 r8153_u1u2en(tp, 0);
 r8153_u2p3en(tp, 0);
 r8153_aldps_en(tp, 0);
 r8153_first_init(tp);
 r8153_aldps_en(tp, 1);

 switch (tp->version) {
 case 131:
 case 130:
  break;
 case 129:
 case 128:
 default:
  r8153_u2p3en(tp, 1);
  break;
 }

 r8153_u1u2en(tp, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct airo_info {int dummy; } ;


 int AUXDATA ;
 int AUXOFF ;
 int AUXPAGE ;
 int IN4500 (struct airo_info*,int ) ;
 int OUT4500 (struct airo_info*,int ,int) ;

__attribute__((used)) static u16 aux_setup(struct airo_info *ai, u16 page,
       u16 offset, u16 *len)
{
 u16 next;

 OUT4500(ai, AUXPAGE, page);
 OUT4500(ai, AUXOFF, 0);
 next = IN4500(ai, AUXDATA);
 *len = IN4500(ai, AUXDATA)&0xff;
 if (offset != 4) OUT4500(ai, AUXOFF, offset);
 return next;
}

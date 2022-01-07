
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_1; int member_0; } ;
typedef TYPE_1__ u16 ;
struct usbtv {int input; } ;


 int ARRAY_SIZE (TYPE_1__ const**) ;
 int EINVAL ;



 int usbtv_set_regs (struct usbtv*,TYPE_1__ const**,int ) ;

__attribute__((used)) static int usbtv_select_input(struct usbtv *usbtv, int input)
{
 int ret;

 static const u16 composite[][2] = {
  { 130 + 0x0105, 0x0060 },
  { 130 + 0x011f, 0x00f2 },
  { 130 + 0x0127, 0x0060 },
  { 130 + 0x00ae, 0x0010 },
  { 130 + 0x0239, 0x0060 },
 };

 static const u16 svideo[][2] = {
  { 130 + 0x0105, 0x0010 },
  { 130 + 0x011f, 0x00ff },
  { 130 + 0x0127, 0x0060 },
  { 130 + 0x00ae, 0x0030 },
  { 130 + 0x0239, 0x0060 },
 };

 switch (input) {
 case 129:
  ret = usbtv_set_regs(usbtv, composite, ARRAY_SIZE(composite));
  break;
 case 128:
  ret = usbtv_set_regs(usbtv, svideo, ARRAY_SIZE(svideo));
  break;
 default:
  ret = -EINVAL;
 }

 if (!ret)
  usbtv->input = input;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; } ;
typedef TYPE_1__ u16 ;
struct usbtv {int ctrl; int input; int norm; } ;


 int ARRAY_SIZE (TYPE_1__ const**) ;

 int usbtv_select_input (struct usbtv*,int ) ;
 int usbtv_select_norm (struct usbtv*,int ) ;
 int usbtv_set_regs (struct usbtv*,TYPE_1__ const**,int ) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int usbtv_setup_capture(struct usbtv *usbtv)
{
 int ret;
 static const u16 setup[][2] = {

  { 128 + 0x0008, 0x0001 },
  { 128 + 0x01d0, 0x00ff },
  { 128 + 0x01d9, 0x0002 },



  { 128 + 0x0239, 0x0040 },
  { 128 + 0x0240, 0x0000 },
  { 128 + 0x0241, 0x0000 },
  { 128 + 0x0242, 0x0002 },
  { 128 + 0x0243, 0x0080 },
  { 128 + 0x0244, 0x0012 },
  { 128 + 0x0245, 0x0090 },
  { 128 + 0x0246, 0x0000 },

  { 128 + 0x0278, 0x002d },
  { 128 + 0x0279, 0x000a },
  { 128 + 0x027a, 0x0032 },
  { 0xf890, 0x000c },
  { 0xf894, 0x0086 },

  { 128 + 0x00ac, 0x00c0 },
  { 128 + 0x00ad, 0x0000 },
  { 128 + 0x00a2, 0x0012 },
  { 128 + 0x00a3, 0x00e0 },
  { 128 + 0x00a4, 0x0028 },
  { 128 + 0x00a5, 0x0082 },
  { 128 + 0x00a7, 0x0080 },
  { 128 + 0x0000, 0x0014 },
  { 128 + 0x0006, 0x0003 },
  { 128 + 0x0090, 0x0099 },
  { 128 + 0x0091, 0x0090 },
  { 128 + 0x0094, 0x0068 },
  { 128 + 0x0095, 0x0070 },
  { 128 + 0x009c, 0x0030 },
  { 128 + 0x009d, 0x00c0 },
  { 128 + 0x009e, 0x00e0 },
  { 128 + 0x0019, 0x0006 },
  { 128 + 0x008c, 0x00ba },
  { 128 + 0x0101, 0x00ff },
  { 128 + 0x010c, 0x00b3 },
  { 128 + 0x01b2, 0x0080 },
  { 128 + 0x01b4, 0x00a0 },
  { 128 + 0x014c, 0x00ff },
  { 128 + 0x014d, 0x00ca },
  { 128 + 0x0113, 0x0053 },
  { 128 + 0x0119, 0x008a },
  { 128 + 0x013c, 0x0003 },
  { 128 + 0x0150, 0x009c },
  { 128 + 0x0151, 0x0071 },
  { 128 + 0x0152, 0x00c6 },
  { 128 + 0x0153, 0x0084 },
  { 128 + 0x0154, 0x00bc },
  { 128 + 0x0155, 0x00a0 },
  { 128 + 0x0156, 0x00a0 },
  { 128 + 0x0157, 0x009c },
  { 128 + 0x0158, 0x001f },
  { 128 + 0x0159, 0x0006 },
  { 128 + 0x015d, 0x0000 },
 };

 ret = usbtv_set_regs(usbtv, setup, ARRAY_SIZE(setup));
 if (ret)
  return ret;

 ret = usbtv_select_norm(usbtv, usbtv->norm);
 if (ret)
  return ret;

 ret = usbtv_select_input(usbtv, usbtv->input);
 if (ret)
  return ret;

 ret = v4l2_ctrl_handler_setup(&usbtv->ctrl);
 if (ret)
  return ret;

 return 0;
}

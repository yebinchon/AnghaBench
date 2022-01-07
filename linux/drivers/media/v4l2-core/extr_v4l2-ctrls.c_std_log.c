
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union v4l2_ctrl_ptr {unsigned int* p_s32; unsigned int* p_s64; unsigned int p_char; int * p_u32; int * p_u16; int * p_u8; } ;
struct v4l2_ctrl {unsigned int nr_of_dims; unsigned int* dims; int type; unsigned int* qmenu; unsigned int* qmenu_int; scalar_t__ is_array; union v4l2_ctrl_ptr p_cur; } ;
 int pr_cont (char*,...) ;

__attribute__((used)) static void std_log(const struct v4l2_ctrl *ctrl)
{
 union v4l2_ctrl_ptr ptr = ctrl->p_cur;

 if (ctrl->is_array) {
  unsigned i;

  for (i = 0; i < ctrl->nr_of_dims; i++)
   pr_cont("[%u]", ctrl->dims[i]);
  pr_cont(" ");
 }

 switch (ctrl->type) {
 case 135:
  pr_cont("%d", *ptr.p_s32);
  break;
 case 136:
  pr_cont("%s", *ptr.p_s32 ? "true" : "false");
  break;
 case 132:
  pr_cont("%s", ctrl->qmenu[*ptr.p_s32]);
  break;
 case 133:
  pr_cont("%lld", ctrl->qmenu_int[*ptr.p_s32]);
  break;
 case 137:
  pr_cont("0x%08x", *ptr.p_s32);
  break;
 case 134:
  pr_cont("%lld", *ptr.p_s64);
  break;
 case 131:
  pr_cont("%s", ptr.p_char);
  break;
 case 128:
  pr_cont("%u", (unsigned)*ptr.p_u8);
  break;
 case 130:
  pr_cont("%u", (unsigned)*ptr.p_u16);
  break;
 case 129:
  pr_cont("%u", (unsigned)*ptr.p_u32);
  break;
 default:
  pr_cont("unknown type %d", ctrl->type);
  break;
 }
}

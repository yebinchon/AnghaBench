
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union v4l2_ctrl_ptr {size_t p_char; size_t p; int * p_s32; int * p_u32; int * p_u16; int * p_u8; int * p_s64; } ;
typedef size_t u32 ;
struct v4l2_ctrl {int type; size_t elem_size; int is_int; } ;
 int memcmp (size_t,size_t,size_t) ;
 int strcmp (size_t,size_t) ;

__attribute__((used)) static bool std_equal(const struct v4l2_ctrl *ctrl, u32 idx,
        union v4l2_ctrl_ptr ptr1,
        union v4l2_ctrl_ptr ptr2)
{
 switch (ctrl->type) {
 case 133:
  return 0;
 case 131:
  idx *= ctrl->elem_size;

  return !strcmp(ptr1.p_char + idx, ptr2.p_char + idx);
 case 132:
  return ptr1.p_s64[idx] == ptr2.p_s64[idx];
 case 128:
  return ptr1.p_u8[idx] == ptr2.p_u8[idx];
 case 130:
  return ptr1.p_u16[idx] == ptr2.p_u16[idx];
 case 129:
  return ptr1.p_u32[idx] == ptr2.p_u32[idx];
 default:
  if (ctrl->is_int)
   return ptr1.p_s32[idx] == ptr2.p_s32[idx];
  idx *= ctrl->elem_size;
  return !memcmp(ptr1.p + idx, ptr2.p + idx, ctrl->elem_size);
 }
}

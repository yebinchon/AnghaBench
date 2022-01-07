
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s64 ;




 int const* __v4l2_qmenu_int_len (int const*,int*) ;

const s64 *v4l2_ctrl_get_int_menu(u32 id, u32 *len)
{
 static const s64 qmenu_int_vpx_num_partitions[] = {
  1, 2, 4, 8,
 };

 static const s64 qmenu_int_vpx_num_ref_frames[] = {
  1, 2, 3,
 };

 switch (id) {
 case 129:
  return __v4l2_qmenu_int_len(qmenu_int_vpx_num_partitions, len);
 case 128:
  return __v4l2_qmenu_int_len(qmenu_int_vpx_num_ref_frames, len);
 default:
  *len = 0;
  return ((void*)0);
 }
}

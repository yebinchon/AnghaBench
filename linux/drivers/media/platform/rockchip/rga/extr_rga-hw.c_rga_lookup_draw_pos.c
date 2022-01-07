
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rga_addr_offset {int dummy; } ;
struct rga_corners_addr_offset {struct rga_addr_offset right_bottom; struct rga_addr_offset right_top; struct rga_addr_offset left_bottom; struct rga_addr_offset left_top; } ;
typedef enum e_rga_start_pos { ____Placeholder_e_rga_start_pos } e_rga_start_pos ;







__attribute__((used)) static struct rga_addr_offset *rga_lookup_draw_pos(struct
  rga_corners_addr_offset
  * offsets, u32 rotate_mode,
  u32 mirr_mode)
{
 static enum e_rga_start_pos rot_mir_point_matrix[4][4] = {
  {
   130, 128, 131, 129,
  },
  {
   128, 130, 129, 131,
  },
  {
   129, 131, 128, 130,
  },
  {
   131, 129, 130, 128,
  },
 };

 if (!offsets)
  return ((void*)0);

 switch (rot_mir_point_matrix[rotate_mode][mirr_mode]) {
 case 130:
  return &offsets->left_top;
 case 131:
  return &offsets->left_bottom;
 case 128:
  return &offsets->right_top;
 case 129:
  return &offsets->right_bottom;
 }

 return ((void*)0);
}

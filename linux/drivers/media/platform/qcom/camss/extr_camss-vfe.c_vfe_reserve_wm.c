
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_device {scalar_t__* wm_output_map; } ;
typedef enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EBUSY ;
 scalar_t__ VFE_LINE_NONE ;

__attribute__((used)) static int vfe_reserve_wm(struct vfe_device *vfe, enum vfe_line_id line_id)
{
 int ret = -EBUSY;
 int i;

 for (i = 0; i < ARRAY_SIZE(vfe->wm_output_map); i++) {
  if (vfe->wm_output_map[i] == VFE_LINE_NONE) {
   vfe->wm_output_map[i] = line_id;
   ret = i;
   break;
  }
 }

 return ret;
}

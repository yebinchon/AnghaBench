
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct vfe_device {int * wm_output_map; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int VFE_LINE_NONE ;

__attribute__((used)) static int vfe_release_wm(struct vfe_device *vfe, u8 wm)
{
 if (wm >= ARRAY_SIZE(vfe->wm_output_map))
  return -EINVAL;

 vfe->wm_output_map[wm] = VFE_LINE_NONE;

 return 0;
}

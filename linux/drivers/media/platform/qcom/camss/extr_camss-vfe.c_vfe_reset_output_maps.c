
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_device {int * wm_output_map; } ;


 int ARRAY_SIZE (int *) ;
 int VFE_LINE_NONE ;

__attribute__((used)) static void vfe_reset_output_maps(struct vfe_device *vfe)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(vfe->wm_output_map); i++)
  vfe->wm_output_map[i] = VFE_LINE_NONE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int field_off; int ccdc; } ;
struct v4l2_rect {int height; int width; } ;


 int vpfe_ccdc_get_image_window (int *,struct v4l2_rect*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*) ;

__attribute__((used)) static void vpfe_calculate_offsets(struct vpfe_device *vpfe)
{
 struct v4l2_rect image_win;

 vpfe_dbg(2, vpfe, "vpfe_calculate_offsets\n");

 vpfe_ccdc_get_image_window(&vpfe->ccdc, &image_win);
 vpfe->field_off = image_win.height * image_win.width;
}

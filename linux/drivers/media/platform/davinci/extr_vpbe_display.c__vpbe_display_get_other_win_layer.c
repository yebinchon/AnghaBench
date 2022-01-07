
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_layer {int device_id; } ;
struct vpbe_display {struct vpbe_layer** dev; } ;
typedef enum vpbe_display_device_id { ____Placeholder_vpbe_display_device_id } vpbe_display_device_id ;


 int VPBE_DISPLAY_DEVICE_0 ;
 int VPBE_DISPLAY_DEVICE_1 ;

__attribute__((used)) static
struct vpbe_layer*
_vpbe_display_get_other_win_layer(struct vpbe_display *disp_dev,
   struct vpbe_layer *layer)
{
 enum vpbe_display_device_id thiswin, otherwin;
 thiswin = layer->device_id;

 otherwin = (thiswin == VPBE_DISPLAY_DEVICE_0) ?
 VPBE_DISPLAY_DEVICE_1 : VPBE_DISPLAY_DEVICE_0;
 return disp_dev->dev[otherwin];
}

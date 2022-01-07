
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvc_control_mapping {int dummy; } ;
typedef int s8 ;
typedef int const s32 ;
__attribute__((used)) static s32 uvc_ctrl_get_zoom(struct uvc_control_mapping *mapping,
 u8 query, const u8 *data)
{
 s8 zoom = (s8)data[0];

 switch (query) {
 case 132:
  return (zoom == 0) ? 0 : (zoom > 0 ? data[2] : -data[2]);

 case 129:
 case 130:
 case 128:
 case 131:
 default:
  return data[2];
 }
}

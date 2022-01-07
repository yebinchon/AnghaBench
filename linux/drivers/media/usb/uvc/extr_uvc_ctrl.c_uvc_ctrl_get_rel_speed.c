
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvc_control_mapping {int offset; } ;
typedef int s8 ;
typedef int const s32 ;
__attribute__((used)) static s32 uvc_ctrl_get_rel_speed(struct uvc_control_mapping *mapping,
 u8 query, const u8 *data)
{
 unsigned int first = mapping->offset / 8;
 s8 rel = (s8)data[first];

 switch (query) {
 case 132:
  return (rel == 0) ? 0 : (rel > 0 ? data[first+1]
       : -data[first+1]);
 case 129:
  return -data[first+1];
 case 130:
 case 128:
 case 131:
 default:
  return data[first+1];
 }
}

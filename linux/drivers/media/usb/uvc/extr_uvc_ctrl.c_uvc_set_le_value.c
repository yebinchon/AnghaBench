
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uvc_control_mapping {int size; int offset; scalar_t__ v4l2_type; } ;
typedef int s32 ;


 scalar_t__ V4L2_CTRL_TYPE_BUTTON ;

__attribute__((used)) static void uvc_set_le_value(struct uvc_control_mapping *mapping,
 s32 value, u8 *data)
{
 int bits = mapping->size;
 int offset = mapping->offset;
 u8 mask;






 if (mapping->v4l2_type == V4L2_CTRL_TYPE_BUTTON)
  value = -1;

 data += offset / 8;
 offset &= 7;

 for (; bits > 0; data++) {
  mask = ((1LL << bits) - 1) << offset;
  *data = (*data & ~mask) | ((value << offset) & mask);
  value >>= offset ? offset : 8;
  bits -= 8 - offset;
  offset = 0;
 }
}

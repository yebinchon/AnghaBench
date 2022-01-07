
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;





__attribute__((used)) static const char *type_name(enum v4l2_buf_type type)
{
 switch (type) {
 case 128:
  return "Output";
 case 129:
  return "Capture";
 default:
  return "Invalid";
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vfe_line {int dummy; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct TYPE_2__ {scalar_t__ version; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ CAMSS_8x16 ;
 scalar_t__ CAMSS_8x96 ;
 int const MEDIA_BUS_FMT_UYVY8_1_5X8 ;

 int const MEDIA_BUS_FMT_VYUY8_1_5X8 ;

 int const MEDIA_BUS_FMT_YUYV8_1_5X8 ;

 int const MEDIA_BUS_FMT_YVYU8_1_5X8 ;

 struct vfe_device* to_vfe (struct vfe_line*) ;
 int vfe_find_code (int*,int ,unsigned int,int) ;

__attribute__((used)) static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
       unsigned int index, u32 src_req_code)
{
 struct vfe_device *vfe = to_vfe(line);

 if (vfe->camss->version == CAMSS_8x16)
  switch (sink_code) {
  case 129:
  {
   u32 src_code[] = {
    129,
    MEDIA_BUS_FMT_YUYV8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  case 128:
  {
   u32 src_code[] = {
    128,
    MEDIA_BUS_FMT_YVYU8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  case 131:
  {
   u32 src_code[] = {
    131,
    MEDIA_BUS_FMT_UYVY8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  case 130:
  {
   u32 src_code[] = {
    130,
    MEDIA_BUS_FMT_VYUY8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  default:
   if (index > 0)
    return 0;

   return sink_code;
  }
 else if (vfe->camss->version == CAMSS_8x96)
  switch (sink_code) {
  case 129:
  {
   u32 src_code[] = {
    129,
    128,
    131,
    130,
    MEDIA_BUS_FMT_YUYV8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  case 128:
  {
   u32 src_code[] = {
    128,
    129,
    131,
    130,
    MEDIA_BUS_FMT_YVYU8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  case 131:
  {
   u32 src_code[] = {
    131,
    129,
    128,
    130,
    MEDIA_BUS_FMT_UYVY8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  case 130:
  {
   u32 src_code[] = {
    130,
    129,
    128,
    131,
    MEDIA_BUS_FMT_VYUY8_1_5X8,
   };

   return vfe_find_code(src_code, ARRAY_SIZE(src_code),
          index, src_req_code);
  }
  default:
   if (index > 0)
    return 0;

   return sink_code;
  }
 else
  return 0;
}

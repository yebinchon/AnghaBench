
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct csid_device {TYPE_1__* camss; } ;
struct TYPE_2__ {scalar_t__ version; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ CAMSS_8x16 ;
 scalar_t__ CAMSS_8x96 ;

 int const MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE ;

 int const MEDIA_BUS_FMT_Y10_2X8_PADHI_LE ;
 int csid_find_code (int*,int ,unsigned int,int) ;

__attribute__((used)) static u32 csid_src_pad_code(struct csid_device *csid, u32 sink_code,
        unsigned int index, u32 src_req_code)
{
 if (csid->camss->version == CAMSS_8x16) {
  if (index > 0)
   return 0;

  return sink_code;
 } else if (csid->camss->version == CAMSS_8x96) {
  switch (sink_code) {
  case 129:
  {
   u32 src_code[] = {
    129,
    MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE,
   };

   return csid_find_code(src_code, ARRAY_SIZE(src_code),
           index, src_req_code);
  }
  case 128:
  {
   u32 src_code[] = {
    128,
    MEDIA_BUS_FMT_Y10_2X8_PADHI_LE,
   };

   return csid_find_code(src_code, ARRAY_SIZE(src_code),
           index, src_req_code);
  }
  default:
   if (index > 0)
    return 0;

   return sink_code;
  }
 } else {
  return 0;
 }
}

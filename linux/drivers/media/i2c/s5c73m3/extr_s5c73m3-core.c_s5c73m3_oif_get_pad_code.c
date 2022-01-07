
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int OIF_ISP_PAD ;
 int OIF_SOURCE_PAD ;
 int S5C73M3_ISP_FMT ;
 int S5C73M3_JPEG_FMT ;

__attribute__((used)) static int s5c73m3_oif_get_pad_code(int pad, int index)
{
 if (pad == OIF_SOURCE_PAD) {
  if (index > 1)
   return -EINVAL;
  return (index == 0) ? S5C73M3_ISP_FMT : S5C73M3_JPEG_FMT;
 }

 if (index > 0)
  return -EINVAL;

 return (pad == OIF_ISP_PAD) ? S5C73M3_ISP_FMT : S5C73M3_JPEG_FMT;
}

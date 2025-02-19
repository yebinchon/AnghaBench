
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sun4i_csi_format {scalar_t__ const fourcc; scalar_t__ const mbus; } ;


 unsigned int ARRAY_SIZE (struct sun4i_csi_format const*) ;
 struct sun4i_csi_format const* sun4i_csi_formats ;

const struct sun4i_csi_format *sun4i_csi_find_format(const u32 *fourcc,
           const u32 *mbus)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(sun4i_csi_formats); i++) {
  if (fourcc && *fourcc != sun4i_csi_formats[i].fourcc)
   continue;

  if (mbus && *mbus != sun4i_csi_formats[i].mbus)
   continue;

  return &sun4i_csi_formats[i];
 }

 return ((void*)0);
}

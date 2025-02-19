
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct smiapp_sensor {int mbus_frame_fmts; struct smiapp_csi_data_format const* csi_format; } ;
struct smiapp_csi_data_format {scalar_t__ code; } ;


 unsigned int ARRAY_SIZE (struct smiapp_csi_data_format const*) ;
 struct smiapp_csi_data_format const* smiapp_csi_data_formats ;

__attribute__((used)) static const struct smiapp_csi_data_format
*smiapp_validate_csi_data_format(struct smiapp_sensor *sensor, u32 code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(smiapp_csi_data_formats); i++) {
  if (sensor->mbus_frame_fmts & (1 << i)
      && smiapp_csi_data_formats[i].code == code)
   return &smiapp_csi_data_formats[i];
 }

 return sensor->csi_format;
}

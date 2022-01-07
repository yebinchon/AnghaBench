
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dcmi {unsigned int num_of_sd_formats; struct dcmi_format** sd_formats; } ;
struct dcmi_format {unsigned int fourcc; } ;



__attribute__((used)) static const struct dcmi_format *find_format_by_fourcc(struct stm32_dcmi *dcmi,
             unsigned int fourcc)
{
 unsigned int num_formats = dcmi->num_of_sd_formats;
 const struct dcmi_format *fmt;
 unsigned int i;

 for (i = 0; i < num_formats; i++) {
  fmt = dcmi->sd_formats[i];
  if (fmt->fourcc == fourcc)
   return fmt;
 }

 return ((void*)0);
}

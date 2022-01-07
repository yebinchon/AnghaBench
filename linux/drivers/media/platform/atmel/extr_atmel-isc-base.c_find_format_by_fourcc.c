
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isc_format {unsigned int fourcc; } ;
struct isc_device {unsigned int num_user_formats; struct isc_format** user_formats; } ;



__attribute__((used)) static struct isc_format *find_format_by_fourcc(struct isc_device *isc,
       unsigned int fourcc)
{
 unsigned int num_formats = isc->num_user_formats;
 struct isc_format *fmt;
 unsigned int i;

 for (i = 0; i < num_formats; i++) {
  fmt = isc->user_formats[i];
  if (fmt->fourcc == fourcc)
   return fmt;
 }

 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isc_format {unsigned int mbus_code; } ;


 unsigned int ARRAY_SIZE (struct isc_format*) ;
 struct isc_format* formats_list ;

__attribute__((used)) static struct isc_format *find_format_by_code(unsigned int code, int *index)
{
 struct isc_format *fmt = &formats_list[0];
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(formats_list); i++) {
  if (fmt->mbus_code == code) {
   *index = i;
   return fmt;
  }

  fmt++;
 }

 return ((void*)0);
}

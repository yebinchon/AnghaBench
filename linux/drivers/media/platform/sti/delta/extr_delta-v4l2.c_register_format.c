
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;



__attribute__((used)) static void register_format(u32 format, u32 formats[], u32 *nb_of_formats)
{
 u32 i;

 for (i = 0; i < *nb_of_formats; i++) {
  if (format == formats[i])
   return;
 }

 formats[(*nb_of_formats)++] = format;
}

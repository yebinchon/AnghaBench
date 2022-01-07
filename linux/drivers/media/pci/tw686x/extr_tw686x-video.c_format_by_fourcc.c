
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_format {unsigned int fourcc; } ;


 unsigned int ARRAY_SIZE (struct tw686x_format const*) ;
 struct tw686x_format const* formats ;

__attribute__((used)) static const struct tw686x_format *format_by_fourcc(unsigned int fourcc)
{
 unsigned int cnt;

 for (cnt = 0; cnt < ARRAY_SIZE(formats); cnt++)
  if (formats[cnt].fourcc == fourcc)
   return &formats[cnt];
 return ((void*)0);
}

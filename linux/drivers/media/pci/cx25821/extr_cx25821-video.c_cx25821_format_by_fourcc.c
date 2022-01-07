
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_fmt {unsigned int fourcc; } ;


 unsigned int ARRAY_SIZE (struct cx25821_fmt const*) ;
 struct cx25821_fmt const* formats ;

__attribute__((used)) static const struct cx25821_fmt *cx25821_format_by_fourcc(unsigned int fourcc)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(formats); i++)
  if (formats[i].fourcc == fourcc)
   return formats + i;
 return ((void*)0);
}

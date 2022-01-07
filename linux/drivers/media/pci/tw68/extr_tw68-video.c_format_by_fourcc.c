
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw68_format {unsigned int fourcc; } ;


 unsigned int FORMATS ;
 struct tw68_format const* formats ;

__attribute__((used)) static const struct tw68_format *format_by_fourcc(unsigned int fourcc)
{
 unsigned int i;

 for (i = 0; i < FORMATS; i++)
  if (formats[i].fourcc == fourcc)
   return formats+i;
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx_fmt {unsigned int fourcc; } ;


 unsigned int ARRAY_SIZE (struct cx231xx_fmt*) ;
 struct cx231xx_fmt* format ;

__attribute__((used)) static struct cx231xx_fmt *format_by_fourcc(unsigned int fourcc)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(format); i++)
  if (format[i].fourcc == fourcc)
   return &format[i];

 return ((void*)0);
}

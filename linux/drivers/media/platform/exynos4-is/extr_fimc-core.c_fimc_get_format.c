
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_fmt {int dummy; } ;


 unsigned int ARRAY_SIZE (struct fimc_fmt*) ;
 struct fimc_fmt* fimc_formats ;

struct fimc_fmt *fimc_get_format(unsigned int index)
{
 if (index >= ARRAY_SIZE(fimc_formats))
  return ((void*)0);

 return &fimc_formats[index];
}

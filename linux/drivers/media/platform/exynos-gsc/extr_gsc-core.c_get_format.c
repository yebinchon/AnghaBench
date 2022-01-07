
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct gsc_fmt const gsc_fmt ;


 int ARRAY_SIZE (int *) ;
 int * gsc_formats ;

const struct gsc_fmt *get_format(int index)
{
 if (index >= ARRAY_SIZE(gsc_formats))
  return ((void*)0);

 return (struct gsc_fmt *)&gsc_formats[index];
}

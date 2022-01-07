
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int usecs_to_dev(unsigned long usecs, unsigned long const array[],
   int size)
{
 int i;
 int rval = -EINVAL;

 for (i = 0; i < size / 2; i++)
  if (array[(i * 2) + 1] >= usecs) {
   rval = array[i * 2];
   break;
  }

 return rval;
}

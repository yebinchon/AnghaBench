
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICE_NO_VSI ;

__attribute__((used)) static int ice_get_free_slot(void *array, int size, int curr)
{
 int **tmp_array = (int **)array;
 int next;

 if (curr < (size - 1) && !tmp_array[curr + 1]) {
  next = curr + 1;
 } else {
  int i = 0;

  while ((i < size) && (tmp_array[i]))
   i++;
  if (i == size)
   next = ICE_NO_VSI;
  else
   next = i;
 }
 return next;
}

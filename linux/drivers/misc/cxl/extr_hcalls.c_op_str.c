
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *op_str(unsigned int op, char *name_array[], int array_len)
{
 if (op >= array_len)
  return "UNKNOWN_OP";
 return name_array[op];
}

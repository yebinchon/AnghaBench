
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_start_code(unsigned char *data, unsigned int data_sz)
{
 if (data_sz > 3 && data[0] == 0 && data[1] == 0 && data[2] == 1)
  return 3;

 if (data_sz > 4 && data[0] == 0 && data[1] == 0 && data[2] == 0 &&
     data[3] == 1)
  return 4;

 return -1;
}

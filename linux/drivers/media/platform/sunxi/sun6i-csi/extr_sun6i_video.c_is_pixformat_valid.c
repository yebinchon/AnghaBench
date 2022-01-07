
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int* supported_pixformats ;

__attribute__((used)) static bool is_pixformat_valid(unsigned int pixformat)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(supported_pixformats); i++)
  if (supported_pixformats[i] == pixformat)
   return 1;

 return 0;
}

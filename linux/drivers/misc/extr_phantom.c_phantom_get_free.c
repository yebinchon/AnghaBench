
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PHANTOM_MAX_MINORS ;
 scalar_t__* phantom_devices ;

__attribute__((used)) static unsigned int phantom_get_free(void)
{
 unsigned int i;

 for (i = 0; i < PHANTOM_MAX_MINORS; i++)
  if (phantom_devices[i] == 0)
   break;

 return i;
}

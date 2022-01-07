
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_10gbt_device(int device)
{

 switch (device) {
 case 0x4409:
 case 0x4486:
  return 1;

 default:
  return 0;
 }
}

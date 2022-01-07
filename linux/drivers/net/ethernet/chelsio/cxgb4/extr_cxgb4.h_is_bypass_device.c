
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_bypass_device(int device)
{

 switch (device) {
 case 0x440b:
 case 0x440c:
  return 1;
 default:
  return 0;
 }
}

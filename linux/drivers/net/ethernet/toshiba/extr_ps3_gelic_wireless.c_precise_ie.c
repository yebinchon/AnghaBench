
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ps3_compare_firmware_version (int,int,int ) ;

__attribute__((used)) static inline int precise_ie(void)
{
 return 0 <= ps3_compare_firmware_version(2, 2, 0);
}

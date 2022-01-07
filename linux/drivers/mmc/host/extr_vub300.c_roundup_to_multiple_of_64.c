
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 roundup_to_multiple_of_64(u16 number)
{
 return 0xFFC0 & (0x3F + number);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* dlc2len ;

u8 can_dlc2len(u8 can_dlc)
{
 return dlc2len[can_dlc & 0x0F];
}

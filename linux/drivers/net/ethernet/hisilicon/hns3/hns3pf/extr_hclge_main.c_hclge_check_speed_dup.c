
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int HCLGE_MAC_FULL ;
 int HCLGE_MAC_SPEED_100M ;
 int HCLGE_MAC_SPEED_10M ;

__attribute__((used)) static u8 hclge_check_speed_dup(u8 duplex, int speed)
{
 if (!(speed == HCLGE_MAC_SPEED_10M || speed == HCLGE_MAC_SPEED_100M))
  duplex = HCLGE_MAC_FULL;

 return duplex;
}

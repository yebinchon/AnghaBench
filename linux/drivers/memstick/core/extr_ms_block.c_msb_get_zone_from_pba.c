
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_BLOCKS_IN_ZONE ;

__attribute__((used)) static int msb_get_zone_from_pba(int pba)
{
 return pba / MS_BLOCKS_IN_ZONE;
}

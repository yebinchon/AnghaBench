
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int GENMASK (int,int) ;

__attribute__((used)) static u32
mt7603_ac_queue_mask0(u32 mask)
{
 u32 ret = 0;

 ret |= GENMASK(3, 0) * !!(mask & BIT(0));
 ret |= GENMASK(8, 5) * !!(mask & BIT(1));
 ret |= GENMASK(13, 10) * !!(mask & BIT(2));
 ret |= GENMASK(19, 16) * !!(mask & BIT(3));
 return ret;
}

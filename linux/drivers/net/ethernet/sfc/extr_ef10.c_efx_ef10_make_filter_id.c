
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 unsigned int HUNT_FILTER_TBL_ROWS ;

__attribute__((used)) static u32 efx_ef10_make_filter_id(unsigned int pri, u16 idx)
{
 return pri * HUNT_FILTER_TBL_ROWS * 2 + idx;
}

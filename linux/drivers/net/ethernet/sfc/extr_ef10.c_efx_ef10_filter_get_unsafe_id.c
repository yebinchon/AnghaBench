
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EFX_EF10_FILTER_ID_INVALID ;
 int HUNT_FILTER_TBL_ROWS ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static u32 efx_ef10_filter_get_unsafe_id(u32 filter_id)
{
 WARN_ON_ONCE(filter_id == EFX_EF10_FILTER_ID_INVALID);
 return filter_id & (HUNT_FILTER_TBL_ROWS - 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HUNT_FILTER_TBL_ROWS ;

__attribute__((used)) static unsigned int efx_ef10_filter_get_unsafe_pri(u32 filter_id)
{
 return filter_id / (HUNT_FILTER_TBL_ROWS * 2);
}

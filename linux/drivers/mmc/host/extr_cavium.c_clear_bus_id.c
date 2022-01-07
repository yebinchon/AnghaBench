
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GENMASK_ULL (int,int) ;

__attribute__((used)) static void clear_bus_id(u64 *reg)
{
 u64 bus_id_mask = GENMASK_ULL(61, 60);

 *reg &= ~bus_id_mask;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int FIELD_PREP (int ,int) ;
 int GENMASK (int,int) ;
 int clear_bus_id (int *) ;

__attribute__((used)) static void set_bus_id(u64 *reg, int bus_id)
{
 clear_bus_id(reg);
 *reg |= FIELD_PREP(GENMASK(61, 60), bus_id);
}

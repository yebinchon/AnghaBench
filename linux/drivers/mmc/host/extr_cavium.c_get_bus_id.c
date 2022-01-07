
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int FIELD_GET (int ,int ) ;
 int GENMASK_ULL (int,int) ;

__attribute__((used)) static int get_bus_id(u64 reg)
{
 return FIELD_GET(GENMASK_ULL(61, 60), reg);
}

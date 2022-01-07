
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmc_cs_data {char const* name; } ;


 struct gpmc_cs_data* gpmc_cs ;

__attribute__((used)) static void gpmc_cs_set_name(int cs, const char *name)
{
 struct gpmc_cs_data *gpmc = &gpmc_cs[cs];

 gpmc->name = name;
}

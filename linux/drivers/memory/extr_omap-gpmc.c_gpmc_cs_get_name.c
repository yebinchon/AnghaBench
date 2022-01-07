
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmc_cs_data {char const* name; } ;


 struct gpmc_cs_data* gpmc_cs ;

__attribute__((used)) static const char *gpmc_cs_get_name(int cs)
{
 struct gpmc_cs_data *gpmc = &gpmc_cs[cs];

 return gpmc->name;
}

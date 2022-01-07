
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmc_cs_data {int flags; } ;


 int GPMC_CS_RESERVED ;
 struct gpmc_cs_data* gpmc_cs ;

__attribute__((used)) static void gpmc_cs_set_reserved(int cs, int reserved)
{
 struct gpmc_cs_data *gpmc = &gpmc_cs[cs];

 gpmc->flags |= GPMC_CS_RESERVED;
}

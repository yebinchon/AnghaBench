
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ end; scalar_t__ start; } ;
struct gpmc_cs_data {struct resource mem; } ;


 struct gpmc_cs_data* gpmc_cs ;
 int gpmc_mem_lock ;
 int release_resource (struct resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gpmc_cs_delete_mem(int cs)
{
 struct gpmc_cs_data *gpmc = &gpmc_cs[cs];
 struct resource *res = &gpmc->mem;
 int r;

 spin_lock(&gpmc_mem_lock);
 r = release_resource(res);
 res->start = 0;
 res->end = 0;
 spin_unlock(&gpmc_mem_lock);

 return r;
}

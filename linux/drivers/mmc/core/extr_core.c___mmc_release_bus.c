
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int * bus_ops; int bus_dead; } ;


 int WARN_ON (int) ;

__attribute__((used)) static void __mmc_release_bus(struct mmc_host *host)
{
 WARN_ON(!host->bus_dead);

 host->bus_ops = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int (* set_param ) (struct memstick_host*,int ,int ) ;} ;


 int MEMSTICK_INTERFACE ;
 int MEMSTICK_POWER ;
 int MEMSTICK_POWER_ON ;
 int MEMSTICK_SERIAL ;
 int stub1 (struct memstick_host*,int ,int ) ;
 int stub2 (struct memstick_host*,int ,int ) ;

__attribute__((used)) static int memstick_power_on(struct memstick_host *host)
{
 int rc = host->set_param(host, MEMSTICK_POWER, MEMSTICK_POWER_ON);

 if (!rc)
  rc = host->set_param(host, MEMSTICK_INTERFACE, MEMSTICK_SERIAL);

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int addr; int irq; } ;


 int free_irq (int ,struct memstick_host*) ;
 int iounmap (int ) ;
 int memstick_free_host (struct memstick_host*) ;
 struct jmb38x_ms_host* memstick_priv (struct memstick_host*) ;

__attribute__((used)) static void jmb38x_ms_free_host(struct memstick_host *msh)
{
 struct jmb38x_ms_host *host = memstick_priv(msh);

 free_irq(host->irq, msh);
 iounmap(host->addr);
 memstick_free_host(msh);
}

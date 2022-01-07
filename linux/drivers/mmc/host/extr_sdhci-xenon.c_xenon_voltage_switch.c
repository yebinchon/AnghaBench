
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int usleep_range (int,int) ;

__attribute__((used)) static void xenon_voltage_switch(struct sdhci_host *host)
{

 usleep_range(5000, 5500);
}

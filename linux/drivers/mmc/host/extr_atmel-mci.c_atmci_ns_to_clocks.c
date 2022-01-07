
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_mci {unsigned int bus_hz; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;

__attribute__((used)) static inline unsigned int atmci_ns_to_clocks(struct atmel_mci *host,
     unsigned int ns)
{




 unsigned int us = DIV_ROUND_UP(ns, 1000);


 return us * (DIV_ROUND_UP(host->bus_hz, 2000000));
}

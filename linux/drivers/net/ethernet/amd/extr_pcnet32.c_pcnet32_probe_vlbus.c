
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCNET32_TOTAL_SIZE ;
 int inb (unsigned int) ;
 int pcnet32_probe1 (unsigned int,int ,int *) ;
 int release_region (unsigned int,int ) ;
 scalar_t__ request_region (unsigned int,int ,char*) ;

__attribute__((used)) static void pcnet32_probe_vlbus(unsigned int *pcnet32_portlist)
{
 unsigned int *port, ioaddr;


 for (port = pcnet32_portlist; (ioaddr = *port); port++) {
  if (request_region
      (ioaddr, PCNET32_TOTAL_SIZE, "pcnet32_probe_vlbus")) {

   if ((inb(ioaddr + 14) == 0x57) &&
       (inb(ioaddr + 15) == 0x57)) {
    pcnet32_probe1(ioaddr, 0, ((void*)0));
   } else {
    release_region(ioaddr, PCNET32_TOTAL_SIZE);
   }
  }
 }
}

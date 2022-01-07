
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base ;
 int iowrite8 (unsigned int,int ) ;

__attribute__((used)) static void
pvpanic_send_event(unsigned int event)
{
 iowrite8(event, base);
}

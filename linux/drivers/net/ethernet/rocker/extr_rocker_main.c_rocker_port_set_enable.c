
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct rocker_port {unsigned long long pport; int rocker; } ;


 int PORT_PHYS_ENABLE ;
 unsigned long long rocker_read64 (int ,int ) ;
 int rocker_write64 (int ,int ,unsigned long long) ;

__attribute__((used)) static void rocker_port_set_enable(const struct rocker_port *rocker_port,
       bool enable)
{
 u64 val = rocker_read64(rocker_port->rocker, PORT_PHYS_ENABLE);

 if (enable)
  val |= 1ULL << rocker_port->pport;
 else
  val &= ~(1ULL << rocker_port->pport);
 rocker_write64(rocker_port->rocker, PORT_PHYS_ENABLE, val);
}

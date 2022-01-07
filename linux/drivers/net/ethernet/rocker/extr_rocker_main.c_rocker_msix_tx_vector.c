
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rocker_port {int port_number; int rocker; } ;


 int ROCKER_MSIX_VEC_TX (int ) ;
 int rocker_msix_vector (int ,int ) ;

__attribute__((used)) static u32 rocker_msix_tx_vector(const struct rocker_port *rocker_port)
{
 return rocker_msix_vector(rocker_port->rocker,
      ROCKER_MSIX_VEC_TX(rocker_port->port_number));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_port {scalar_t__ type; } ;


 scalar_t__ NFP_PORT_PF_PORT ;
 scalar_t__ NFP_PORT_VF_PORT ;

__attribute__((used)) static inline bool nfp_port_is_vnic(const struct nfp_port *port)
{
 return port->type == NFP_PORT_PF_PORT || port->type == NFP_PORT_VF_PORT;
}

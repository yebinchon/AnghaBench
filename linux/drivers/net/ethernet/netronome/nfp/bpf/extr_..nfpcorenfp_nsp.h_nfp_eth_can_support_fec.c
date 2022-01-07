
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_eth_table_port {int fec_modes_supported; } ;



__attribute__((used)) static inline bool nfp_eth_can_support_fec(struct nfp_eth_table_port *eth_port)
{
 return !!eth_port->fec_modes_supported;
}

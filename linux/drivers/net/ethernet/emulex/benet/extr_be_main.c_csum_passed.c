
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_rx_compl_info {int err; scalar_t__ ipv6; scalar_t__ ip_csum; scalar_t__ l4_csum; scalar_t__ udpf; scalar_t__ tcpf; } ;



__attribute__((used)) static inline bool csum_passed(struct be_rx_compl_info *rxcp)
{



 return (rxcp->tcpf || rxcp->udpf) && rxcp->l4_csum &&
  (rxcp->ip_csum || rxcp->ipv6) && !rxcp->err;
}

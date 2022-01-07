
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_bdr {int bd_count; int tcir; } ;


 int ENETC_TBCIR_IDX_MASK ;
 int enetc_rd_reg (int ) ;

__attribute__((used)) static int enetc_bd_ready_count(struct enetc_bdr *tx_ring, int ci)
{
 int pi = enetc_rd_reg(tx_ring->tcir) & ENETC_TBCIR_IDX_MASK;

 return pi >= ci ? pi - ci : tx_ring->bd_count - ci + pi;
}

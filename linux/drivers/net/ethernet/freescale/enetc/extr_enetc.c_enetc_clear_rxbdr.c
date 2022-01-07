
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_hw {int dummy; } ;
struct enetc_bdr {int index; } ;


 int ENETC_RBMR ;
 int enetc_rxbdr_wr (struct enetc_hw*,int,int ,int ) ;

__attribute__((used)) static void enetc_clear_rxbdr(struct enetc_hw *hw, struct enetc_bdr *rx_ring)
{
 int idx = rx_ring->index;


 enetc_rxbdr_wr(hw, idx, ENETC_RBMR, 0);
}

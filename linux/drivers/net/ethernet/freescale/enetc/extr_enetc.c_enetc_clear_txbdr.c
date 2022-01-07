
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_hw {int dummy; } ;
struct enetc_bdr {int index; int ndev; } ;


 int ENETC_TBMR ;
 int ENETC_TBSR ;
 int ENETC_TBSR_BUSY ;
 int enetc_txbdr_rd (struct enetc_hw*,int,int ) ;
 int enetc_txbdr_wr (struct enetc_hw*,int,int ,int ) ;
 int msleep (int) ;
 int netdev_warn (int ,char*,int) ;

__attribute__((used)) static void enetc_clear_txbdr(struct enetc_hw *hw, struct enetc_bdr *tx_ring)
{
 int delay = 8, timeout = 100;
 int idx = tx_ring->index;


 enetc_txbdr_wr(hw, idx, ENETC_TBMR, 0);


 while (delay < timeout &&
        enetc_txbdr_rd(hw, idx, ENETC_TBSR) & ENETC_TBSR_BUSY) {
  msleep(delay);
  delay *= 2;
 }

 if (delay >= timeout)
  netdev_warn(tx_ring->ndev, "timeout for tx ring #%d clear\n",
       idx);
}

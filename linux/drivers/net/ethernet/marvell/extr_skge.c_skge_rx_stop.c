
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_hw {int dummy; } ;


 int CSR_SET_RESET ;
 int CSR_STOP ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int Q_R1 ;
 int Q_R2 ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 int RB_DIS_OP_MD ;
 int RB_RST_SET ;
 int * rxqaddr ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;

__attribute__((used)) static void skge_rx_stop(struct skge_hw *hw, int port)
{
 skge_write8(hw, Q_ADDR(rxqaddr[port], Q_CSR), CSR_STOP);
 skge_write32(hw, RB_ADDR(port ? Q_R2 : Q_R1, RB_CTRL),
       RB_RST_SET|RB_DIS_OP_MD);
 skge_write32(hw, Q_ADDR(rxqaddr[port], Q_CSR), CSR_SET_RESET);
}

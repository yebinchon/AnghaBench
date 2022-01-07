
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_private {int ring_dma; int dev; int cpcmd; } ;
struct cp_desc {int dummy; } ;
typedef int dma_addr_t ;


 int CP_RX_RING_SIZE ;
 int Cmd ;
 int CpCmd ;
 scalar_t__ HiTxRingAddr ;
 int RxOn ;
 scalar_t__ RxRingAddr ;
 int TxOn ;
 scalar_t__ TxRingAddr ;
 int cpw16 (int ,int ) ;
 int cpw32_f (scalar_t__,int) ;
 int cpw8 (int ,int) ;
 int netdev_reset_queue (int ) ;

__attribute__((used)) static inline void cp_start_hw (struct cp_private *cp)
{
 dma_addr_t ring_dma;

 cpw16(CpCmd, cp->cpcmd);
 cpw32_f(HiTxRingAddr, 0);
 cpw32_f(HiTxRingAddr + 4, 0);

 ring_dma = cp->ring_dma;
 cpw32_f(RxRingAddr, ring_dma & 0xffffffff);
 cpw32_f(RxRingAddr + 4, (ring_dma >> 16) >> 16);

 ring_dma += sizeof(struct cp_desc) * CP_RX_RING_SIZE;
 cpw32_f(TxRingAddr, ring_dma & 0xffffffff);
 cpw32_f(TxRingAddr + 4, (ring_dma >> 16) >> 16);







 cpw8(Cmd, RxOn | TxOn);

 netdev_reset_queue(cp->dev);
}

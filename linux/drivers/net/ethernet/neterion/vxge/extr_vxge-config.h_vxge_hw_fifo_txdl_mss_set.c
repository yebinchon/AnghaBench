
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_hw_fifo_txd {int control_0; } ;


 int VXGE_HW_FIFO_TXD_LSO_EN ;
 int VXGE_HW_FIFO_TXD_LSO_MSS (int) ;

__attribute__((used)) static inline void vxge_hw_fifo_txdl_mss_set(void *txdlh, int mss)
{
 struct vxge_hw_fifo_txd *txdp = (struct vxge_hw_fifo_txd *)txdlh;

 txdp->control_0 |= VXGE_HW_FIFO_TXD_LSO_EN;
 txdp->control_0 |= VXGE_HW_FIFO_TXD_LSO_MSS(mss);
}

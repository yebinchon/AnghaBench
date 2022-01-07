
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int dummy; } ;


 int CIR_FIFOCON ;
 int CIR_FIFOCON_RX_TRIGGER_LEV ;
 int CIR_FIFOCON_TX_TRIGGER_LEV ;
 int CIR_RX_LIMIT_COUNT ;
 int CIR_SLCH ;
 int CIR_SLCL ;
 int LOGICAL_DEV_CIR ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_clear_cir_fifo (struct nvt_dev*) ;
 int nvt_clear_tx_fifo (struct nvt_dev*) ;
 int nvt_disable_logical_dev (struct nvt_dev*,int ) ;
 int nvt_enable_logical_dev (struct nvt_dev*,int ) ;

__attribute__((used)) static void nvt_cir_regs_init(struct nvt_dev *nvt)
{
 nvt_enable_logical_dev(nvt, LOGICAL_DEV_CIR);


 nvt_cir_reg_write(nvt, CIR_RX_LIMIT_COUNT >> 8, CIR_SLCH);
 nvt_cir_reg_write(nvt, CIR_RX_LIMIT_COUNT & 0xff, CIR_SLCL);


 nvt_cir_reg_write(nvt, CIR_FIFOCON_TX_TRIGGER_LEV |
     CIR_FIFOCON_RX_TRIGGER_LEV, CIR_FIFOCON);


 nvt_clear_cir_fifo(nvt);
 nvt_clear_tx_fifo(nvt);

 nvt_disable_logical_dev(nvt, LOGICAL_DEV_CIR);
}
